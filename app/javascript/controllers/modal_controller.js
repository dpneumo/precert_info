import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.dataset.action = "modal#show";
  }
 
  show(event) {
    const contactId = this.data.get("contactId")
    const dialog = document.getElementById(event.params.dialog);
    dialog.showModal(contactId);
  }
} 