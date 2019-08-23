require 'test_helper'

module Workarea
  module Storefront
    class ProductQuickviewSystemTest < Workarea::SystemTest
      include Storefront::SystemTest

      setup :set_products
      setup :set_category

      def set_products
        @products = [
          create_product(
            id: 'PROD1',
            name: 'Test Product 1',
            variants: [{ sku: 'SKU1', regular: 10.to_m }],
            filters: { 'Size' => 'Medium', 'Color' => 'Blue' }
          ),
          create_product(
            id: 'PROD2',
            name: 'Test Product 2',
            variants: [{ sku: 'SKU2', regular: 12.to_m }],
            filters: {
              'Size' => ['Medium', 'Small'],
              'Color' => ['Blue', 'Green']
            }
          )
        ]
      end

      def set_category
        @category = create_category(
          name: 'Test Category',
          product_ids: [@products.second.id, @products.first.id]
        )
      end

      def test_opening_product_quickview
        Workarea.with_config do |config|
          config.product_quickview_templates = [@products.first.template.to_sym]
          visit storefront.category_path(@category)

          first('.product-summary').hover

          assert_text t('workarea.storefront.products.quick_view')

          click_link t('workarea.storefront.products.quick_view')
          wait_for_xhr
          assert_selector('.ui-dialog')
        end
      end

      def test_disabled_product_quickview
        Workarea.with_config do |config|
          config.product_quickview_templates = []
          visit storefront.category_path(@category)

          first('.product-summary').hover

          refute_text t('workarea.storefront.products.quick_view')
        end
      end
    end
  end
end
