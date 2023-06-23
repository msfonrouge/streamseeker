import { Controller } from "@hotwired/stimulus";


export default class extends Controller {
  static targets = ["heart", "bookmark"];

  connect() {
    //console.log(this.element);
    //console.log(this.heartTarget);
  }

  toggleHeartButton() {
    this.heartTarget.classList.toggle("heart-red");
     //this.heartTarget.style.color = "red";
  }

   toggleBookmarkButton() {
     this.bookmarkTarget.classList.toggle("bookmark-orange");
     //this.bookmarkTarget.style.color = "orange";
   }
}

