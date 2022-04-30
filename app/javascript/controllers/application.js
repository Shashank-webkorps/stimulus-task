// window.jQuery = window.$ = require('jquery')

// The controller will call: window.jQuery(table).DataTable(config)
// require('datatables.net')

// These examples use bootstrap4 and the scroller plugin.
// See https://datatables.net/download for more options.
// require('datatables.net-bs4')
// require('datatables.net-scroller-bs4')


import { Application } from "@hotwired/stimulus"
const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application
// import Datatable from 'stimulus-datatables'
// application.register('datatable', Datatable)
export { application }
