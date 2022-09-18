// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

import "./src/jquery"

$(function() {
    console.log("Hello from jQuery!");
    });

import "./src/global.min.js"
import "./src/chart.bundle.min.js"
import "./src/jquery.nice-select.js"
import "./src/apexchart.js"

import "./src/moment.js"
import "./src/bootstrap-datetimepicker.min.js"

window.importmapScriptsLoaded = true;
console.log(window.importmapScriptsLoaded);
