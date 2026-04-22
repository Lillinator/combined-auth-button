import Component from "@glimmer/component";
import { action } from "@ember/object";
import { service } from "@ember/service";
import { getOwner } from "@ember/application";
import DButton from "discourse/components/d-button";
import I18n from "discourse-i18n";

export default class MobileAuthButton extends Component {
  @service currentUser;
  @service header;

  get shouldShow() {
    return !this.currentUser && !this.header.headerButtonsHidden.includes("login");
  }

  get mobileAuthButtonLabel() {
    return I18n.t(themePrefix("mobile_auth_button"));
  }

  @action
  showLogin() {
    const appRoute = getOwner(this).lookup("route:application");
    if (appRoute) {
      appRoute.send("showLogin");
    }
  }

  <template>
    {{#if this.shouldShow}}
      <DButton
        class="btn-primary btn-small mobile-auth-button"
        @action={{this.showLogin}}
        @translatedLabel={{this.mobileAuthButtonLabel}}
        @icon="user"
      />
    {{/if}}
  </template>
}
