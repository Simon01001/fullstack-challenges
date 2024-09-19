import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["check", "bigCheck"]

  connect() {
    console.log("something!");
  }

  checkAll(event) {
    this.checkTargets.forEach((target) => {
      if (this.bigCheckTarget.checked === true) {
        target.checked = true;
      } else {
        target.checked = false;
      }
    });
  }
}
