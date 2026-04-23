## Discourse Combined Auth Button

### :woman_technologist: Overview
This theme component combines the sign up and login buttons into one button with drop down options, for a cleaner header space and improved user experience (especially for mobile users).

In particular, the default Discourse mobile forum view hides the Sign Up button and just shows the existing Log In button; this can be confusing and non-intuitive for new visitors to Discourse forums (anonymous view). Moreover, the default mobile view log in button links to the log in page that in turn, has a link to the sign up page; this creates unnecessary friction for new users on mobile devices.

Default mobile view without component:

<img width="40%" height="40%" alt="47098157-549C-4084-92D0-6C1A54A3CC09_1_201_a" src="https://github.com/user-attachments/assets/29dfa542-9788-4a9a-83ec-5dba38aa0757" />

This simple Discourse theme component replaces the existing Log In button with a combined button with clearer labeling - the default is Sign Up / Log In. When clicked or tapped, it opens a dropdown menu or mobile modal with links to the respective sign up or log in pages. There is an admin setting that gives the option to hide the combined button icon for more header space, as well as settings for changing all of the icons and text string fields to customize all the button labels.

Mobile button and modal with component default settings:

<img width="40%" height="40%" alt="DF348A51-5F80-4EC6-9FDB-E522E70F7845_1_201_a" src="https://github.com/user-attachments/assets/33715338-5d8f-4f55-ad8b-7ad5d7d2bc97" />
<br/>
<img width="40%" height="40%" alt="7EE2D070-78B8-438D-B857-E2228516AC7E_1_201_a" src="https://github.com/user-attachments/assets/7bebd6a0-7039-4688-9e4b-73a8197b29f2" />

Desktop button and dropdown menu with component default settings:

<img alt="image" src="https://github.com/user-attachments/assets/e6b894bf-32a3-4080-84e2-d286d8d0d73f" />

There are admin settings that allow the combined button icon for more header space in mobile view, as well as for changing all the button icons. You can also customize all the button labels.

### :camera_flash: More screenshots

With component installed and `Hide mobile login button icon` enabled:

<img width="40%" height="40%" alt="8E14BA2B-A2C1-43C0-8554-3EA42EFFE8AA_1_201_a" src="https://github.com/user-attachments/assets/a0815ae9-48f0-4ddc-a955-a75d7795250d" />

With component installed & changed button texts and icons:

Mobile:

<img width="40%" height="40%" alt="E28D57E3-B771-4824-9D35-F77BAB593AAE_1_201_a" src="https://github.com/user-attachments/assets/bc8299bc-abf8-4de5-943d-6da42f67bb70" />

<br />

<img width="40%" height="40%" alt="7E0555A7-9DE3-4248-8807-355BB6B67ADB_1_201_a" src="https://github.com/user-attachments/assets/bcfcdc2b-add6-47b8-83a0-fe6315dba7fc" />

Desktop:

<img width="40%" height="40%" alt="image" src="https://github.com/user-attachments/assets/839d29ed-76cc-42bc-a0af-a42f5acc899a" />


### :gear: Settings & theme translations

|Setting | Description|
|--- | ---|
|`enable_on_desktop` | Enable the combined auth button on all viewports sizes|
|`hide_mobile_login_button_icon` | hides the combined auth button icon in mobile view to save header space|
|`combined_button_icon` | SVG icon for the main dropdown trigger button |
|`login_button_icon` | SVG icon for Log In button (& combined auth button if 'Hide mobile login button icon` is disabled)|
|`signup_button_icon` | SVG icon for the Sign Up button|
|`button_labels.auth` | combined button text string for theme translations|
|`button_labels.log_in` | log in button text string for theme translations|
|`button_labels.sign_up` | sign up button text string for theme translations|


***

**Discourse Meta Topic**: https://meta.discourse.org/t/-/401215

**Support**: For issues or feature requests, please post in the [Meta topic](https://meta.discourse.org/t/-/401215) or start a PR on this repo.  

**To hire me or buy me coffee**: visit me here: [Lilly@Discourse Meta](https://meta.discourse.org/u/Lilly/summary).

