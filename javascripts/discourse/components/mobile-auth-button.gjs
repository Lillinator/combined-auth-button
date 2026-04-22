import Component from "@glimmer/component";
import { action } from "@ember/object";
import { service } from "@ember/service";
import { getOwner } from "@ember/application";
import { fn } from "@ember/helper";
import DButton from "discourse/components/d-button";
import DropdownMenu from "discourse/components/dropdown-menu";
import DMenu from "discourse/float-kit/components/d-menu";
import I18n from "discourse-i18n";

export default class MobileAuthButton extends Component {
  @service currentUser;
  @service header;
  @service siteSettings;

  get shouldShow() {
    return !this.currentUser && !this.header.headerButtonsHidden.includes("login");
  }

  // Verify if signups are currently allowed on the forum
  get showSignUp() {
    return this.siteSettings.allow_new_registrations && !this.siteSettings.invite_only;
  }

  get mobileAuthButtonLabel() {
    return I18n.t(themePrefix("mobile_auth_button"));
  }

  get authOptions() {
    const options = [];

    // Show Sign Up button (if allowed)
    if (this.showSignUp) {
      options.push({
        id: "signup",
        labelKey: "sign_up", // Discourse core translation key
        icon: "user-plus",
      });
    }

    // Show Log In button
    options.push({
      id: "login",
      labelKey: "log_in", // Discourse core translation key
      icon: "user",
    });

    return options;
  }

  @action
  onRegisterApi(api) {
    this.dMenu = api;
  }

  @action
  onSelect(optionId) {
    const appRoute = getOwner(this).lookup("route:application");
    if (appRoute) {
      if (optionId === "login") {
        appRoute.send("showLogin");
      } else if (optionId === "signup") {
        appRoute.send("showCreateAccount");
      }
    }
    
    this.dMenu?.close();
  }

  <template>
    {{#if this.shouldShow}}
      <DMenu
        @modalForMobile={{true}}
        @identifier="mobile-auth-dropdown"
        @onRegisterApi={{this.onRegisterApi}}
        @icon="user"
        @label={{this.mobileAuthButtonLabel}}
        class="btn-primary btn-small mobile-auth-button"
      >
        <:content>
          <DropdownMenu as |dropdown|>
            {{#each this.authOptions as |option|}}
              <dropdown.item>
                <DButton
                  @label={{option.labelKey}}
                  @icon={{option.icon}}
                  class="btn-transparent"
                  @action={{fn this.onSelect option.id}}
                />
              </dropdown.item>
            {{/each}}
          </DropdownMenu>
        </:content>
      </DMenu>
    {{/if}}
  </template>
}
