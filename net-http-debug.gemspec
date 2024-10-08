require_relative 'lib/net-http-debug/version'

Gem::Specification.new do |spec|
  spec.name          = "net-http-debug"
  spec.version       = NetHttpDebug::VERSION
  spec.authors       = ["Andrei Bondarev"]
  spec.email         = ["andrei.bondarev13@gmail.com"]

  spec.summary       = %q{A simple gem to enable Net::HTTP debugging}
  spec.description   = %q{This gem provides an easy way to enable and disable HTTP debugging for Net::HTTP}
  spec.homepage      = "https://github.com/andreibondarev/net-http-debug"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/andreibondarev/net-http-debug"
  spec.metadata["changelog_uri"] = "https://github.com/andreibondarev/net-http-debug/blob/master/CHANGELOG.md"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

