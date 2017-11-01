# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stock_screener/version'

Gem::Specification.new do |spec|
  spec.name          = "stock_screener"
  spec.version       = StockScreener::VERSION
  spec.authors       = ["'Daniel Karagiannis'"]
  spec.email         = ["'dakaragiannis@gmail.com'"]

  spec.summary       = %q{Stock filter for gold miners from small to large cap.}
  spec.description   = %q{This is a CLI gem that will enable the user to access a list of stocks in the gold mining industry and seek more detailed investor info on demand.}
  spec.homepage      = "https://github.com/dakaras/cli-data-gem-assessment-v-000"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
end
