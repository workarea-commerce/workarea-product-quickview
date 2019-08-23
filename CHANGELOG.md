Workarea Product Quickview 2.0.0 (2019-03-13)
--------------------------------------------------------------------------------

*   Persist Quickview Buttons for all devices

    QUICKVIEW-18
    Curt Howard



Workarea Product Quickview 1.2.2 (2019-02-20)
--------------------------------------------------------------------------------

*   Remove Quickview Button UI when screen is touched

    This solution should offer a superior UX for users operating a
    touch-screen device. Since browser detection is lacking in this area,
    the best way to accomplish is to trigger an event when the screen is
    actually pressed. At this point we simply remove all quickview buttons
    on the current page.

    QUICKVIEW-17
    Curt Howard

*   Update for workarea v3.4 compatibility

    QUICKVIEW-16
    Matt Duffy



Workarea Product Quickview 1.2.1 (2018-07-24)
--------------------------------------------------------------------------------

*   Fix failing test due to current SKU changes

    QUICKVIEW-15
    Ben Crouse



Workarea Product Quickview 1.2.0 (2018-05-24)
--------------------------------------------------------------------------------

*   Make config list known prodcut template types for configuration

    Copying config.product_templates made the configuration load order
    dependent. If a plugin added a template but was added after quickview
    it would not have quickview. The updated config is now a baseline for
    product-team-supported plugins that add templates. Any other theme or
    plugin is responsible for checking for quickview and adding itself
    otherwise.

    QUICKVIEW-13
    Matt Duffy

*   Leverage Workarea Changelog task

    ECOMMERCE-5355
    Curt Howard



Workarea Product Quickview 1.1.0 (2018-02-06)
--------------------------------------------------------------------------------

*   Opt-out of product quickview

    Certain products, like package products, are not able to be quickviewed
    because of their complex detail pages. Quick-viewing products can now be
    enabled or disabled on a per-product basis. We leverage the template
    configuration, adding a new config setting called `product_quickview_templates`.
    The templates in this array of symbols are the only product templates that can
    be quickviewed. By default, all configured `product_templates` from base
    will be quick-viewable, but plugins that add templates must also add
    their template to `product_quickview_templates` if they are
    able to be quickviewed.

    QUICKVIEW-12
    Tom Scott

*   Opt-out of product quickview

    Certain products, like package products, are not able to be quickviewed
    because of their complex detail pages. Introduce the
    `Catalog::Product#quickview?` method that defaults to `true` in these
    cases, so that method can be overridden by plugins if they want to
    opt-out of quickview functionality.

    This also prevents a double render error from occurring when both
    package products and quickview are enabled, by using an `and return`
    clause to halt execution in the controller action.

    QUICKVIEW-12
    Tom Scott


Workarea Product Quickview 1.0.2 (2017-12-12)
--------------------------------------------------------------------------------

*   Add TestCase::SearchIndexing to helper test

    Fixes the build for this plugin, and opened up an issue in `ViewTest` for base
    wherein we need this module to be included.

    QUICKVIEW-11
    Tom Scott


Workarea Product Quickview 1.0.1 (2017-06-08)
--------------------------------------------------------------------------------

*   Remove unneeded explicit render from products#show

    The base action does not define an explicit render, this allows plugins
    to add alternative render actions without conflict or DoubleRender errors.

    QUICKVIEW-9
    Matt Duffy

*   Move the helper to engine so that it loads earlier in the boot process

    QUICKVIEW-8
    Dave Barnow

*   Fix failing test

    The test was failing because quickview is now showing only when hovering
    QUICKVIEW-7
    Dave Barnow

*   Bring in new rubocop config, appease rubocop

    QUICKVIEW-6
    Dave Barnow


Workarea Product Quickview 1.0.0 (2017-05-26)
--------------------------------------------------------------------------------
