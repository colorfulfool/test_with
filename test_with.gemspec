
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "test_with"
  spec.version       = "0.1.1"
  spec.authors       = ["Anton Khamets"]
  spec.email         = ["colorfulfool@gmail.com"]

  spec.summary       = "Watches current dir and runs the command after any change"
  spec.description   = "A generalization if autotest: watches current dir and runs the command after any change"
  # spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  
    spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  
  
  spec.add_dependency "listen"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
