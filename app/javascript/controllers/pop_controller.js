import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pop"
export default class extends Controller {
  static targets = ["remove"]
  disable(){
    this.removeTarget.classList.remove("show")
    this.removeTarget.classList.remove("d-block")
  }
}
