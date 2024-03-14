import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

    static targets = ["newP2p", "newContact"]

    toggleContact() {
      this.newContactTargets.forEach((el) => {
        el.hidden = !el.hidden
      });
    }    

    toggleP2p() {
      this.newP2pTargets.forEach((el) => {
        el.hidden = !el.hidden
      });
    }    
} 