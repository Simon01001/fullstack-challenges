import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["counter", "text"]

  connect() {
    console.log("something!");
  }

  updateCounter() {
    this.counterTarget.innerText = this.textTarget.value.length;
    // console.log("count");
  }
}
