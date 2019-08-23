require 'test_helper'

module Workarea
  class ProductQuickviewTest < TestCase
    def test_quickview
      Workarea.with_config do |config|
        config.product_templates = %i(generic package)
        config.product_quickview_templates = %i(generic)

        product = create_product

        product.template = 'generic'
        assert product.quickview?

        product.template = 'package'
        refute product.quickview?
      end
    end
  end
end
