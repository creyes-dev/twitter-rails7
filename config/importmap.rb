# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "popper", to: 'popper.js', preload: true
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "jquery", preload: true # @3.6.0
pin "@rails/ujs", to: "@rails--ujs.js", preload: true # @7.0.3
pin "perfect-scrollbar", preload: true # @1.5.5
pin "metis-menu", to: "metismenu.js", preload: true
