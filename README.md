## Discourse Combined Auth Button

### :woman_technologist: Overview
This theme component combines the sign up and login buttons into one button with drop down options, for a cleaner interface and improved user experience.  In particular, the default Discourse mobile forum view hides the Sign Up button and just shows the existing Log In button; this can be confusing and non-intuitive for new visitors to Discourse forums (anonymous view). Moreover, the default mobile log in button links to the log in page that in turn, has a link to the sign up page; this creates unnecessary friction for new users on mobile.  

Default mobile view without component:

<img width="40%" height="40%" alt="47098157-549C-4084-92D0-6C1A54A3CC09_1_201_a" src="https://github.com/user-attachments/assets/29dfa542-9788-4a9a-83ec-5dba38aa0757" />

This simple Discourse theme component replaces the existing `Log In` button with a combined button with clearer labeling - the default is `Sign Up / Log In`. When clicked or tapped, it opens a dropdown menu or mobile modal with links to the sign up or log in pages.

Mobile:

<img width="40%" height="40%" alt="DF348A51-5F80-4EC6-9FDB-E522E70F7845_1_201_a" src="https://github.com/user-attachments/assets/33715338-5d8f-4f55-ad8b-7ad5d7d2bc97" />

Mobile sign up or log in modal:

<img width="40%" height="40%" alt="7EE2D070-78B8-438D-B857-E2228516AC7E_1_201_a" src="https://github.com/user-attachments/assets/7bebd6a0-7039-4688-9e4b-73a8197b29f2" />

Desktop button with dropdown menu:

<img width="50%" height="50%" alt="image" src="https://github.com/user-attachments/assets/e6b894bf-32a3-4080-84e2-d286d8d0d73f" />

There is an admin setting that gives the option to hide the combined button icon for more header space, as well as text string fields to customize all the button labels.

### :camera_flash: More screenshots

With component installed and `Hide mobile login button icon` enabled:

<img width="40%" height="40%" alt="8E14BA2B-A2C1-43C0-8554-3EA42EFFE8AA_1_201_a" src="https://github.com/user-attachments/assets/a0815ae9-48f0-4ddc-a955-a75d7795250d" />

With component installed & changed button texts:

Mobile:

<img width="40%" height="40%" alt="E8826177-5E32-42D5-9402-AE8132F2BE19_1_201_a" src="https://github.com/user-attachments/assets/eda1c378-70cc-4256-b2c2-c8c571ed43da" />

<br />

<img width="40%" height="40%" alt="7A630DCA-2264-4F5E-AAF0-54CAB60CAEA0_1_201_a" src="https://github.com/user-attachments/assets/a80dd2c6-b521-4edb-a1c0-6ad2a70f325b" />

Desktop:

<img width="50%" height="50%" alt="image" src="https://github.com/user-attachments/assets/fdc17939-1f15-4fb1-acbe-891b67f07675" />


### :gear: Settings & theme translations

* `enable_on_desktop` - Enable the combined sign up & log in button on all viewports sizes
* `hide_mobile_login_button_icon` - hides the combined log in button icon in mobile view to save header space
* `login_button_icon` - SVG icon for Log In button (& combined button if 'Hide mobile login button icon` is disabled)
* `signup_button_icon` - SVG icon for the Sign Up button
* `button_labels.auth` - combined button text string for theme translations
* `button_labels.log_in` - log in button text string for theme translations
* `button_labels.sign_up=` - sign up button text string for theme translations

***

**Discourse Meta Topic**: https://meta.discourse.org/t/discourse-mobile-auth-button/401215/1

**Support**: For issues or feature requests, please post in the [Meta topic](https://meta.discourse.org/t/discourse-mobile-auth-button/401215/1) or start a PR on this repo.  

**To hire me or buy me coffee**: visit me here: [Lilly@Discourse Meta](https://meta.discourse.org/u/Lilly/summary).

