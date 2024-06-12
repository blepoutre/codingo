import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="achat"
export default class extends Controller {
  connect() {
    this.csrfTokent = (document.querySelector('meta[name=csrf-token]').content);
  }
  buy(){
    fetch(window.location + "/achat",{
      method: "PATCH",
      headers: {"Accept": "text/plain", "X-CSRF_Token": this.csrfTokent,
                "Content-type": "application/json"},
    })
  .then(reponse => console.log(reponse))
  }
}
