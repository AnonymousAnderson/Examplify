# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "examplify"
  spec.version       = "0.1.1"
  spec.authors       = ["Jimmy Börjesson"]
  spec.email         = ["lagginglion@gmail.com"]
  spec.summary       = "Outputs an entire project with filenames as comments."
  spec.description   = "Good for pasting an example that's using multiple files into a gist or a blogpost."
  spec.homepage      = "https://github.com/alcesleo/examplify"
  spec.license       = "MIT"

  spec.files         = Dir["{bin,lib}/**/*", "examplify.gemspec" "LICENSE*", "Rakefile", "README*"]
  spec.test_files    = Dir["spec/**/*"]
  spec.executables   = ["examplify"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
end
