import { withPluginApi } from "discourse/lib/plugin-api";
import CombinedAuthButton from "../components/combined-auth-button"; 

export default {
  name: "add-combined-auth-button",
  initialize() {
    withPluginApi("1.1.0", (api) => {
      api.renderInOutlet("header-buttons", CombinedAuthButton);
    });
  },
};
