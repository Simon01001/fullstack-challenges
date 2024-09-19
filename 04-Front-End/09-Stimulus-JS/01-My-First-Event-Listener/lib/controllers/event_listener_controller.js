import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["link", "button"]

  connect() {
    console.log("something!");
  }

  disable() {
    console.log("disable");
    this.element.innerText = "Bingo!";
    this.element.setAttribute("disabled", "");
  }
}
