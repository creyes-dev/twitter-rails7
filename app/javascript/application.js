// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "./src/jquery"
import "@rails/ujs"
import "popper"
import "bootstrap"
import "perfect-scrollbar"

$(function(){
    console.log("jquery is loaded!");
})

import "metis-menu"
import "dlab_settings"
import "chartjs"
import "apexcharts"

window.importmapScriptsLoaded = true;
