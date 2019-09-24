# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "mi-jekyll-theme"
  spec.version       = "0.4.0"
  spec.authors       = ["flobraeun"]
  spec.email         = [""]

  spec.summary       = "Theme for Jekyll Websites by TH Köln Medieninformatik."
  spec.homepage      = "https://www.medieninformatik.th-koeln.de"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
