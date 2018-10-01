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
//= require jquery3
//= require jquery_ujs
//= require rails-ujs
//= require owl.carousel
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function () {


   
 
    $('form').on('click', '.add_articulos_imagenes', function (event) {
        var regexp, time;
        time = new Date().getTime();
        regexp = new RegExp($(this).data('id'), 'g');
        $('.fields_articulos_imagenes').append($(this).data('fields').replace(regexp, time));
        return event.preventDefault();
    });

    $('form').on('click', '.remove_nombre_facturacion', function (event) {
        $(this).prev('input[type=hidden]').val('1');
        $(this).closest('tr').remove();
        return event.preventDefault();
    });
    
    $(".owl-carousel").owlCarousel({
        loop: true,
            margin: 10,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 1,
                    nav: true
                },
                600: {
                    items: 1,
                    nav: false
                },
                1000: {
                    items: 1,
                    nav: true,
                    loop: false
                }
            }
    });


   

  


})