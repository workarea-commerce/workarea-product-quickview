/**
 * @namespace WORKAREA.quickviewButtonPlaceholders
 */
WORKAREA.registerModule('quickviewButtonPlaceholders', (function () {
    'use strict';

    var quickviewButtonTemplate = JST['workarea/storefront/product_quickview/templates/quickview_button'],

        openQuickview = function (event) {
            var $quickviewButtonLink = $(event.currentTarget),
                url = $quickviewButtonLink.attr('href');

            event.preventDefault();

            WORKAREA.dialog.createFromUrl(url);
        },

        replacePlaceholder = function (index, placeholder) {
            var $placeholder = $(placeholder),
                data = $placeholder.data('quickviewButtonPlaceholder'),
                $quickviewButton = $(quickviewButtonTemplate({
                    analytics_data: data.analytics_data,
                    url: data.url
                }));

            WORKAREA.initModules($quickviewButton);

            $(placeholder).replaceWith($quickviewButton);

            $quickviewButton
            .on('click', 'a', openQuickview);
        },

        /**
         * @method
         * @name init
         * @memberof WORKAREA.quickviewButtonPlaceholders
         */
        init = function ($scope) {
            $('[data-quickview-button-placeholder]', $scope)
            .each(replacePlaceholder);
        };

    return {
        init: init
    };
}()));
