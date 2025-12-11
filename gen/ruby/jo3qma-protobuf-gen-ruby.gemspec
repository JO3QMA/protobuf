# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jo3qma-protobuf-gen-ruby"
  spec.version       = "0.0.1"
  spec.authors       = ["JO3QMA"]
  spec.email         = ["gumi@jo3qma.com"]

  spec.summary       = "Generated Ruby code from protobuf"
  spec.description   = "Generated Ruby code from protobuf"
  spec.homepage      = "https://github.com/JO3QMA/protobuf"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"]
  spec.require_paths = ["lib"]
  spec.add_dependency "grpc", "~> 1.50"
  spec.add_dependency "google-protobuf", ">= 3.25", "< 5.0"
end
