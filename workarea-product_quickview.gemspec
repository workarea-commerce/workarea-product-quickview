$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'workarea/product_quickview/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'workarea-product_quickview'
  s.version     = Workarea::ProductQuickview::VERSION
  s.authors     = ['Jordan Stewart']
  s.email       = ['jstewart@weblinc.com']
  s.homepage    = 'https://github.com/workarea-commerce/workarea-product-quickview'
  s.summary     = 'Product Quickview'
  s.description = 'Adds product quickview button to product summaries'
  s.files = `git ls-files`.split("\n")
  s.license = 'Business Software License'
  # s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  # s.license = 'Business Software License'

  s.required_ruby_version = '>= 2.3.0'

  s.add_dependency 'workarea', '~> 3.x'

end
