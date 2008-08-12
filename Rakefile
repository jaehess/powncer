require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'
require File.join(File.dirname(__FILE__), 'lib', 'powncer', 'version')

def library_root
  File.dirname(__FILE__)
end

desc 'Run tests'
task :default => :test

Rake::TestTask.new('test') do |t|
  t.libs << 'test'
  t.pattern = 'test/*/*_test.rb'
end

Rake::RDocTask.new do |rdoc|  
  rdoc.rdoc_dir = 'doc'  
  rdoc.title    = "Powncer -- A Ruby library to the Pownce REST API"  
  rdoc.options << '--line-numbers' << '--inline-source'   
  rdoc.rdoc_files.include('lib/**/*.rb')
end

namespace :rdoc do
  task :deploy => :rerdoc do
    sh %(scp -r doc jaehess@rubyforge.org:/var/www/gforge-projects/powncer/)
  end
end

desc 'Check code to test ratio'
task :stats do 
  library_files = FileList["#{library_root}/lib/**/*.rb"]
  test_files    = FileList["#{library_root}/test/**/*_test.rb"]
  count_code_lines = Proc.new do |lines| 
    lines.inject(0) do |code_lines, line|
      next code_lines if [/^\s*$/, /^\s*#/].any? {|non_code_line| non_code_line === line}
      code_lines + 1
    end
  end
  
  count_code_lines_for_files = Proc.new do |files|
    files.inject(0) {|code_lines, file| code_lines + count_code_lines[IO.read(file)]}
  end
  
  library_code_lines = count_code_lines_for_files[library_files]
  test_code_lines    = count_code_lines_for_files[test_files]
  ratio = Proc.new { sprintf('%.2f', test_code_lines.to_f / library_code_lines)}
  
  puts "Code LOC: #{library_code_lines}    Test LOC: #{test_code_lines}    Code to Test Ratio: 1:#{ratio.call}"
end

namespace :dist do 
  spec = Gem::Specification.new do |s| 
    s.name = "powncer"
    s.version = Gem::Version.new(Powncer::Version::VERSION)
    s.author = "Jae Hess"
    s.email = "jae.hess@gmail.com"
    s.homepage = "http://powncer.rubyforge.org"
    s.platform = Gem::Platform::RUBY
    s.summary = "Powncer is a Ruby library to the Pownce REST API"
    s.files = FileList['Rakefile', 'lib/**/*.rb']
    s.require_path = "lib"
    s.test_files = Dir['test/**/*']
    s.has_rdoc = true
    s.rubyforge_project = 'powncer' 
    s.add_dependency 'json'
  end

  Rake::GemPackageTask.new(spec) do |pkg|
    pkg.need_tar = true
  end
  
  desc 'Install with gem'
  task :install => :repackage do
    sh "sudo gem i pkg/#{spec.name}-#{spec.version}.gem"
  end
  
  desc 'Uninstall gem'
  task :uninstall do
    sh "sudo gem uninstall #{spec.name} -x"
  end
  
  desc 'Reinstall gem'
  task :reinstall => [:uninstall, :install]
  
  package_name = lambda {|specification| File.join('pkg', "#{specification.name}-#{specification.version}")}
  
  desc 'Push a release to rubyforge'
  task :release => ['dist:clobber_package', :package] do 
    require 'rubyforge'
    package = package_name[spec]

    rubyforge = RubyForge.new
    rubyforge.login
    
    #version_already_released = lambda do
    #  releases = rubyforge.userconfig['release_ids']
    #  releases.has_key?(spec.name) && releases[spec.name][spec.version]
    #end
    #
    #abort("Release #{spec.version} already exists!") if version_already_released.call
    
    
    if release_id = rubyforge.add_release(spec.rubyforge_project, spec.name, spec.version, "#{package}.tgz")
      rubyforge.add_file(spec.rubyforge_project, spec.name, release_id, "#{package}.gem")
    else
      puts 'Release failed!'
    end
  end
  
end

desc 'Upload website files to rubyforge'
task :website do
  host = "jaehess@rubyforge.org"
  remote_dir = "/var/www/gforge-projects/powncer/"
  local_dir = '~/Sites/powncer.rubyforge.org/site'
  sh %{rsync -av #{local_dir}/ #{host}:#{remote_dir}}
end

task :cleanup => ['dist:clobber_package', 'clobber_rdoc']
