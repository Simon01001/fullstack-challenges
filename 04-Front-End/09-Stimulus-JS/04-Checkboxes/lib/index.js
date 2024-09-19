/* eslint-disable import/extensions */
import { Application } from "@hotwired/stimulus";

// TODO: Import the Stimulus Controller here
import CheckAllCheckboxesControllers from "./controllers/check_all_checkboxes_controller.js";

window.Stimulus = Application.start();
// TODO: Register your Stimulus Controller below
window.Stimulus.register("check-all-checkboxes", CheckAllCheckboxesControllers);
