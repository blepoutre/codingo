import { Controller } from "@hotwired/stimulus"

let counter = 3;
let error = 3;

// Connects to data-controller="answer"
export default class extends Controller {
  static targets=["reponse1", "reponse2", "reponse3", "reponse4", "reponse5", "win", "loose", "compteur"];

  static values={
    validation: Number
  };

    connect(){
      this.csrfTokent = (document.querySelector('meta[name=csrf-token]').content);
    }

  check() {
    switch(true) {
      case (this.reponse1Target.firstChild.nextSibling.checked):
        this.userAnswer = this.reponse1Target.innerText;
        break;
      case (this.reponse2Target.firstChild.nextSibling.checked):
        this.userAnswer = this.reponse2Target.innerText;
        break;
      case (this.reponse3Target.firstChild.nextSibling.checked):
        this.userAnswer = this.reponse3Target.innerText;
        break;
      case (this.reponse4Target.firstChild.nextSibling.checked):
        this.userAnswer = this.reponse4Target.innerText;
        break;
      case (this.reponse5Target.firstChild.nextSibling.checked):
        this.userAnswer = this.reponse5Target.innerText;
        break;
    }
    this.result(this.userAnswer);
  }

  result(userAnswer){
    if (parseInt(userAnswer) === this.validationValue){
      error -= counter
      this.winTarget.classList.add("show");
      this.winTarget.classList.add("d-block");
      fetch(window.location + "/finish_level",{
          method: "PATCH",
          headers: {"Accept": "text/plain", "X-CSRF_Token": this.csrfTokent,
                    "Content-type": "application/json"},
          body: JSON.stringify({"tries": error})
        })
      .then(reponse => reponse.text())
      .then(data =>{
        document.querySelector(".playmodal-body").outerHTML = data
        console.log(data)
      })
      } else {
        counter -= 1;
        if (counter === 0){
          this.looseTarget.classList.add("show");
          this.looseTarget.classList.add("d-block");
          }
          };
      this.compteurTarget.innerText = `${counter}`;
  }
}
