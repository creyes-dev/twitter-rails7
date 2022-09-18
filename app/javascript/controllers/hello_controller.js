import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("stimulus: connect event fired");
  }

  initialize() {
    console.log("stimulus: initialize event fired");
  }

  changed() {
    console.log("value changed");
  }
}
