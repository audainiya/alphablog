import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="articles"
export default class extends Controller {
  connect() {
    console.log("Articles controller connected")
  }
}
