Workarea Product Quickview
================================================================================

Product Quickview plugin for the Workarea platform.

This adds a quickview button to product summaries to allows user to open up a modal of the product (on desktop).

Before Installing!!
-------------------

Require this plugin before all other plugins that provide product
templates in your Gemfile, otherwise the quick-viewable template configuration
will not be initialized properly.

For example:

```ruby
source 'https://gems.workarea.com' do
  gem 'workarea', '~> 3'
  gem 'workarea-product_quickview'
  gem 'workarea-clothing'
  gem 'workarea-package_products'
end
```

Getting Started
--------------------------------------------------------------------------------

This gem contains a rails engine that must be mounted onto a host Rails application.

You must have access to a Workarea gems server to use this gem. Add your gems server credentials to Bundler:

    bundle config gems.weblinc.com my_username:my_password

Or set the appropriate environment variable in a shell startup file:

    export BUNDLE_GEMS__WEBLINC__COM='my_username:my_password'

Then add the gem to your application's Gemfile specifying the source:

    # ...
    gem 'workarea-product_quickview', source: 'https://gems.weblinc.com'
    # ...

Or use a source block:

    # ...
    source 'https://gems.weblinc.com' do
      gem 'workarea-product_quickview'
    end
    # ...

Update your application's bundle.

    cd path/to/application
    bundle

Workarea Platform Documentation
--------------------------------------------------------------------------------

See [http://developer.weblinc.com](http://developer.weblinc.com) for Workarea platform documentation.

Copyright & Licensing
--------------------------------------------------------------------------------

Copyright WebLinc 2017. All rights reserved.

For licensing, contact sales@workarea.com.
