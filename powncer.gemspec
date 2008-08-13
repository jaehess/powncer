require File.join(File.dirname(__FILE__), 'lib', 'powncer', 'version')
Gem::Specification.new do |s| 
  s.name = "powncer"
  s.version = Gem::Version.new(Powncer::Version::VERSION)
  s.author = "Jae Hess"
  s.email = "me@jaehess.com"
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