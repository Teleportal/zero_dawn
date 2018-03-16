
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "zero_dawn/version"

Gem::Specification.new do |spec|
  spec.name          = "zero_dawn"
  spec.version       = ZeroDawn::VERSION
  spec.authors       = ["Teleportal"]
  spec.email         = ["joshthegreenberg@gmail.com"]

  spec.summary       = "We're going to save the world at the cost of the world."
  spec.description   = "Operation Enduring Victory is a lie. Doctor Sobeck can tell you more in the next briefing room..."
  spec.homepage      = "https://github.com/Teleportal/zero_dawn"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.executables   = ["horizon"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "unirest", "~> 1.1.2"
end
