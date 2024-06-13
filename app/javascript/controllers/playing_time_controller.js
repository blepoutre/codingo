import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["duration"]

  connect() {
    const loginTime = localStorage.getItem("loginTime")
    if (loginTime) {
      const loginDate = new Date(loginTime)
      const currentDate = new Date()
      const duration = Math.floor((currentDate - loginDate) / 1000) // Durée en secondes

      const hours = Math.floor(duration / 3600)
      const minutes = Math.floor((duration % 3600) / 60)
      const seconds = duration % 60

      this.durationTarget.textContent = `${hours}h ${minutes}m ${seconds}s`
    } else {
      this.durationTarget.textContent = "Pas encore connecté"
    }
  }
}
