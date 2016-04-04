# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bunto-seo-tag/version'

Gem::Specification.new do |spec|
  spec.name          = 'bunto-seo-tag'
  spec.version       = Bunto::SeoTag::VERSION
  spec.authors       = ['Ben Balter', 'Suriyaa Kudo']
  spec.email         = ['ben.balter@github.com', 'SuriyaaKudoIsc@users.noreply.github.com']
  spec.summary       = "A Bunto plugin to add metadata tags for search engines and social networks to better index and display your site's content."
  spec.homepage      = 'https://github.com/bunto/bunto-seo-tag'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'bunto'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'html-proofer', '~> 2.5'
  spec.add_development_dependency 'rubocop', '~> 0.37'
end
