Gem::Specification.new do |s|
  s.name        = %q{factory_face_rails}
  s.version     = '4.8.2'
  s.authors     = ["Joe Ferris"]
  s.email       = %q{jferris@thoughtbot.com}
  s.homepage    = "http://github.com/schwad/factory_face_rails"
  s.summary     = %q{factory_face_rails provides integration between
    factory_face and rails 3 or newer}
  s.description = %q{factory_face_rails provides integration between
    factory_face and rails 3 or newer (currently just automatic factory definition
    loading)}

  s.files         = Dir['**/*'].keep_if { |file| File.file?(file) }
  s.require_paths = ["lib"]
  s.executables   = []
  s.license       = "MIT"

  s.add_runtime_dependency('railties', '>= 3.0.0')
  s.add_runtime_dependency('factory_face', '~> 4.8.2')
end
