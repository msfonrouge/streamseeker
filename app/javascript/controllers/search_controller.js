import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["form", "input"]

  connect() {
    console.log(this.element)
    console.log(this.formTarget)
    console.log(this.inputTarget)
  }

  submit() {
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url, {headers: {"Accept": "application/json"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
        console.log(data)
      })
  }
}
