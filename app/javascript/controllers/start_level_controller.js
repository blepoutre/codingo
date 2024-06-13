import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="login"
export default class extends Controller {
  static target = ["startFlag"]

  connect() {
    this.loginButtonTargets.forEach(button => {
      button.addEventListener("click", this.storeLoginTime)
    })
  }

  storeStartTime() {
    const startFlag = new Date().toISOString()
    localStorage.setItem("startFlag", startFlag)
  }
}
