import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["form", "input", "list"]

  connect() {
    console.log(this.element)
    console.log(this.formTarget)
    console.log(this.inputTarget)
  }

  submit(event) {
    event.preventDefault();

    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        console.log(data)
        // this.listTarget.outerHTML = data

        this.listTarget.insertAdjacentHTML('afterend', data)
      })
  }
}

// primero hacer console.log para ver respuesta .text
// falta que al borrar la barra desaparezca la lista.
// falta que no aparezcan los resultados repetidos.
