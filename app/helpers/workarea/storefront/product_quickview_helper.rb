module Workarea
  module Storefront
    module ProductQuickviewHelper
      def quickview_button_data(product)
        {
          url: product_path(product, product.browse_link_options),
          analytics_data: product_click_analytics_data(product).to_json
        }
      end

      def product_quickview_analytics_data(product)
        {
          event: 'productQuickview',
          payload: product_analytics_data(product)
        }
      end
    end
  end
end
