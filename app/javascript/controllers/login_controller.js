import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="login"
export default class extends Controller {
  static targets = ["loginButton"]

  connect() {
    this.loginButtonTargets.forEach(button => {
      button.addEventListener("click", this.storeLoginTime)
    })
  }

  storeLoginTime() {
    const loginTime = new Date().toISOString()
    localStorage.setItem("loginTime", loginTime)
  }
}
