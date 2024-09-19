import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["source"]

  connect() {
    console.log("hello");
  }

  copy() {
    navigator.clipboard.writeText(this.sourceTarget.value);
  }
}
