import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["form", "input", "list"]

  connect() {
    console.log(this.element)
    console.log(this.formTarget)
    console.log(this.inputTarget)
        // Verifica si se encuentra en la página 'home'
        if (this.element.closest("#bg-image")) {
          // Conectado en la página 'home'
          console.log("Conectado en la página 'home'");
        } else {
          // Conectado en la página 'index'
          console.log("Conectado en la página 'index'");
        }
  }

  submit() {
    // event.preventDefault();

    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        console.log(data)
        this.listTarget.outerHTML = data

        // this.listTarget.insertAdjacentHTML('afterend', data)
      })
  }
}
