module Workarea
  Plugin.append_partials(
    'storefront.product_summary',
    'workarea/storefront/products/quickview_button_placeholder'
  )

  Plugin.append_stylesheets(
    'storefront.components',
    'workarea/storefront/product_quickview/components/quickview_button'
  )

  Plugin.append_javascripts(
    'storefront.modules',
    'workarea/storefront/product_quickview/modules/quickview_button_placeholders'
  )

  Plugin.append_javascripts(
    'storefront.templates',
    'workarea/storefront/product_quickview/templates/quickview_button'
  )
end
