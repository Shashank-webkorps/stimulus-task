import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['table']
  initialize() {
    this.buildTable()
  }

  buildTable() {
    const table = new DataTable(this.tableTarget,{
      searching: true,
      'ajax': {
        'url': $('#users-datatable').data('source'),
        dataSrc: ''
      },
      columns: [
       {data: 'teacher'},{data: 'school'},{data: 'school_year'}
      ],
      'columnDefs': [
        {'className': 'text-center border-b.border-blue-200', 'targets': '_all'}
      ],
      'lengthMenu': [ 25, 50, 75, 100 ]
    });
    const length_control = document.querySelector('select[name="users-datatable_length"]');
    if (length_control) { length_control.style.paddingRight="25px"; }
  }
}
