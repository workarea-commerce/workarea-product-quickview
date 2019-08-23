module Workarea
  module ProductQuickview
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      isolate_namespace Workarea::ProductQuickview

      config.to_prepare do
        Storefront::ApplicationController.helper(Storefront::ProductQuickviewHelper)
      end
    end
  end
end
