import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="answer"
export default class extends Controller {
  static targets=["reponse1", "reponse2", "reponse3", "reponse4", "reponse5"]

  check() {
    if (this.reponse1Target.firstChild.nextSibling.checked){
      console.log(this.reponse1Target.innerText)}
    else if (this.reponse2Target.firstChild.nextSibling.checked){
      console.log(this.reponse2Target.innerText)
    }
    else if (this.reponse3Target.firstChild.nextSibling.checked){
      console.log(this.reponse3Target.innerText)
    }
    else if (this.reponse4Target.firstChild.nextSibling.checked){
      console.log(this.reponse4Target.innerText)
    }
    else if (this.reponse5Target.firstChild.nextSibling.checked){
      console.log(this.reponse5Target.innerText)
    }
  }
}
