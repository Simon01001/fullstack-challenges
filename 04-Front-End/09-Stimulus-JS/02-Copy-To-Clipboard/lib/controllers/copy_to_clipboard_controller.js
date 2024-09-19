import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["source", "button"]

  connect() {
    console.log("hello");
  }

  copy() {
    navigator.clipboard.writeText(this.sourceTarget.value);
    this.buttonTarget.innerText = "Copied!";
    this.buttonTarget.setAttribute("disabled", "");
  }
}
