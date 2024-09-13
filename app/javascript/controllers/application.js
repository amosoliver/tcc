import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus = application
    // app/javascript/packs/application.js
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";

document.addEventListener('DOMContentLoaded', () => {
    flatpickr(".datepicker", {
        enableTime: true,
        dateFormat: "d/m/Y H:i",
        time_24hr: true
    });
});


export { application }