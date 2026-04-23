import { withPluginApi } from "discourse/lib/plugin-api";
import MobileAuthButton from "../components/combined-auth-button";

export default {
  name: "add-combined-auth-button",
  initialize() {
    withPluginApi("1.1.0", (api) => {
      api.renderInOutlet("before-header-panel", MobileAuthButton, {
        attributes: { class: "mobile-auth-button-wrapper" }
      });
    });
  },
};
