import { Application } from "@hotwired/stimulus"

const application = Application.start()

const webpack = require("webpack");
environment.plugins.append(
  "Provide",
  new webpack.ProvidePlugin({
    Popper: ["popper.js", "default"],
  })
);

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
