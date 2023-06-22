import { Controller } from "@hotwired/stimulus";


export default class extends Controller {
  static targets = ["heart"];

  connect() {
    //console.log(this.element);
    //console.log(this.heartTarget);
  }

  toggleHeartButton() {
    console.log("toggleHeartButton called");
    //this.heartTarget.classList.toggle("red");
     this.heartTarget.style.color = "red";
  }
}
