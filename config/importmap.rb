# Pin npm packages by running ./bin/importmap

pin "flowbite", to: "https://ga.jspm.io/npm:flowbite@2.5.2/lib/esm/index.js"
pin "application"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js"
pin "flowbite-datepicker", to: "https://ga.jspm.io/npm:flowbite-datepicker@1.3.0/dist/main.esm.js"
pin "turbolinks", to: "https://ga.jspm.io/npm:turbolinks@5.2.0/dist/turbolinks.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
