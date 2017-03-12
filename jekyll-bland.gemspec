# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-bland"
  spec.version       = "1.0.0"
  spec.authors       = ["Jamie Davies"]
  spec.email         = ["jamie@jamiedavies.me"]

  spec.summary       = %q{Yet another simple, no-frills theme for Jekyll.}
  spec.homepage      = "https://github.com/daviesjamie/jekyll-bland"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.4"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
