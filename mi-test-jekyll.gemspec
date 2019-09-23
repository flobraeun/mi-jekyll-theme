# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "mi-test-jekyll"
  spec.version       = "0.3.27"
  spec.authors       = ["flobraeun"]
  spec.email         = [""]

  spec.summary       = "This is just a test."
  spec.homepage      = "https://www.medieninformatik.th-koeln.de"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|mi-lib|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
