import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  initialize() {
    window.jQuery(this.element).dataTable({
      searching: true,
      "ajax": {
        "url": $('#users-datatable').data('source'),
        dataSrc: ''
      },
      columns: [
       {data: 'teacher'},{data: 'school'},{data: 'school_year'}
      ],
      "columnDefs": [
        {"className": "text-center", "targets": "_all"}
      ],
      "lengthMenu": [ 25, 50, 75, 100 ]
    });
  }
}
