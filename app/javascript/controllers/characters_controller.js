import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="characters"
export default class extends Controller {
  static targets = ["index"]
  connect() {
    console.log(this.indexTarget)
  }

  personnality() {
    console.log(this.element.dataset.charactersIndex)
  }
}
