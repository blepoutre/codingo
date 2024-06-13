import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static target = ["chrono"]

  connect() {
    const startTime = localStorage.getItem("startFlag")
    if (startTime) {
      const startDate = new Date(startTime)
      const endDate = new Date()
      const chrono = Math.floor((endDate - startDate) / 1000) // Durée en secondes

      const hours = Math.floor(chrono / 3600)
      const minutes = Math.floor((chrono % 3600) / 60)
      const seconds = chrono % 60

      this.durationTarget.textContent = `${hours}h ${minutes}m ${seconds}s`
    } else {
      this.durationTarget.textContent = "Pas encore terminé"
    }
  }
}
