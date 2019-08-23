require 'test_helper'

module Workarea
  module Storefront
    class ProductQuickviewHelperTest < ViewTest
      include Workarea::Storefront::Engine.routes.url_helpers
      include AnalyticsHelper
      include Workarea::TestCase::SearchIndexing

      def test_quickview_button_data
        model = create_product
        view_model = ProductViewModel.wrap(model)

        result = quickview_button_data(view_model)

        assert_includes(result, :url)
        assert_includes(result, :analytics_data)
        assert_includes(result.to_s, view_model.id)
      end

      def test_product_quickview_analytics_data
        model = create_product
        view_model = ProductViewModel.wrap(model)

        result = product_quickview_analytics_data(view_model)

        assert_includes(result, :event)
        assert_includes(result, :payload)
        assert_includes(result.to_s, view_model.id)
      end
    end
  end
end
