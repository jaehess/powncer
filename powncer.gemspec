Gem::Specification.new do |s| 
  s.name = "powncer"
  s.version = Gem::Version.new('0.1.2')
  s.author = "Jae Hess"
  s.email = "me@jaehess.com"
  s.homepage = "http://powncer.rubyforge.org"
  s.platform = Gem::Platform::RUBY
  s.summary = "Powncer is a Ruby library to the Pownce REST API"
  s.files = ['Rakefile',
             'lib/powncer/authentication.rb',
             'lib/powncer/base.rb',
             'lib/powncer/connection.rb',
             'lib/powncer/event.rb',
             'lib/powncer/ext.rb',
             'lib/powncer/link.rb',
             'lib/powncer/media.rb',
             'lib/powncer/note.rb',
             'lib/powncer/user.rb',
             'lib/powncer/version.rb',
             'lib/powncer.rb']
  s.require_path = "lib"
  s.has_rdoc = true
  s.rubyforge_project = 'powncer' 
  s.add_dependency 'json'
end