import Component from "@glimmer/component";
import { action } from "@ember/object";
import { service } from "@ember/service";
import { getOwner } from "@ember/application";
import { fn } from "@ember/helper";
import DButton from "discourse/components/d-button";
import DropdownMenu from "discourse/components/dropdown-menu";
import DMenu from "discourse/float-kit/components/d-menu";
import I18n from "discourse-i18n";

export default class CombinedAuthButton extends Component {
  @service currentUser;
  @service header;
  @service siteSettings;

  get combinedIcon() {
    return settings.combined_button_icon;
  }

  get loginIcon() {
    return settings.login_button_icon;
  }

  get signupIcon() {
    return settings.signup_button_icon;
  }

  get shouldShow() {
    return !this.currentUser && !this.header.headerButtonsHidden.includes("login");
  }

  get showSignUp() {
    return this.siteSettings.allow_new_registrations && !this.siteSettings.invite_only;
  }

  get mobileAuthButtonLabel() {
    return I18n.t(themePrefix("button_labels.auth"));
  }

  get authOptions() {
    const options = [];

    if (this.showSignUp) {
      options.push({
        id: "signup",
        labelKey: "button_labels.sign_up",
        icon: this.signupIcon,
      });
    }

    options.push({
      id: "login",
      labelKey: "button_labels.log_in",
      icon: this.loginIcon,
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
        @identifier="combined-auth-dropdown"
        @onRegisterApi={{this.onRegisterApi}}
        @icon={{this.combinedIcon}}
        @label={{this.mobileAuthButtonLabel}}
        class="btn-primary btn-small combined-auth-button"
      >
        <:content>
          <DropdownMenu as |dropdown|>
            {{#each this.authOptions as |option|}}
              <dropdown.item>
                <DButton
                  @label={{themePrefix option.labelKey}}
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
