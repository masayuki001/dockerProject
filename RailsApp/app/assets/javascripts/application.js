// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require_tree .
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require flatpickr
//= require flatpickr/l10n/ja

document.addEventListener('turbolinks:load', () => {
    // カレンダーの日本語化
    flatpickr.localize(flatpickr.l10ns.ja)
    // カレンダー表示
    flatpickr('#flatpickr', {
        locale: 'ja',
        dateFormat: "Y/m/d",
        minDate: new Date(),
        disableMobile: true,
    });
})
