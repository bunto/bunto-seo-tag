$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'bunto'
require 'bunto-seo-tag'
require 'html/proofer'

ENV['BUNTO_LOG_LEVEL'] = 'error'

def dest_dir
  File.expand_path('../tmp/dest', File.dirname(__FILE__))
end

def source_dir
  File.expand_path('./fixtures', File.dirname(__FILE__))
end

CONFIG_DEFAULTS = {
  'source'      => source_dir,
  'destination' => dest_dir,
  'gems'        => ['bunto-seo-tag']
}.freeze

def make_page(options = {})
  page = Bunto::Page.new site, CONFIG_DEFAULTS['source'], '', 'page.md'
  page.data = options
  page
end

def make_post(options = {})
  filename = File.expand_path('2015-01-01-post.md', CONFIG_DEFAULTS['source'])
  config = { :site => site, :collection => site.collections['posts'] }
  page = Bunto::Document.new filename, config
  page.merge_data!(options)
  page
end

def make_site(options = {})
  config = Bunto.configuration CONFIG_DEFAULTS.merge(options)
  Bunto::Site.new(config)
end

def make_context(registers = {}, environments = {})
  Liquid::Context.new(environments, {}, { :site => site, :page => page }.merge(registers))
end
