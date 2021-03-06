
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "test_with"
  spec.version       = "0.1.3"
  spec.authors       = ["Anton Khamets"]
  spec.email         = ["colorfulfool@gmail.com"]

  spec.summary       = "Watches current dir and runs the command after any change"
  spec.description   = "Autotest but for any language and test environment"
  spec.homepage      = "https://github.com/colorfulfool/test_with"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  
    spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  
  
  spec.add_dependency "listen"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
