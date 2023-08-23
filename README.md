<img src="icon.svg" alt="Thunderbird GNOME theme" width="128" align="left"/>

# Thunderbird GNOME theme

[![GitHub](https://img.shields.io/github/license/rafaelmardojai/thunderbird-gnome-theme.svg)](https://github.com/rafaelmardojai/thunderbird-gnome-theme/blob/master/LICENSE)
[![Donate](https://img.shields.io/badge/PayPal-Donate-gray.svg?style=flat&logo=paypal&colorA=0071bb&logoColor=fff)](https://paypal.me/RafaelMardojaiCM)
[![Liberapay](https://img.shields.io/liberapay/receives/rafaelmardojai.svg?logo=liberapay)](https://liberapay.com/rafaelmardojai/donate)

<br>

**A GNOME theme for Thunderbird**

This theme follows latest GNOME Adwaita style.

> ## Warning:
> This theme is a work in progress.

> ### Disclaimer:
> Be aware that this theme might do things that are not supported by upstream Thunderbird. If you face an issue while using this theme, report it here first or test if it is repoducible in vanilla Thunderbird.
>
> If you are a software distribution maintainer, please do not ship this changes by default to your users unless you made extremely clear that they are using a modified version of Thunderbird UI.

## Description

This is a bunch of CSS code to make Thunderbird look closer to GNOME's native apps.

### Getting in Touch

Matrix room: [#firefox-gnome-theme:matrix.org](https://matrix.to/#/#firefox-gnome-theme:matrix.org)

### Thunderbird versions support

The `main` branch of this repo supports the current Thunderbird stable release `115`.

Theme versions complatible with older Thunderbird releases are preserved as git tags.

## Installation

### Installation script
1. Clone this repo and enter folder:

	```sh
	git clone https://github.com/rafaelmardojai/thunderbird-gnome-theme && cd thunderbird-gnome-theme
	```
2. Checkout a git branch or tag if needed, otherwise use `main` and ignore this step.
	```sh
	git checkout beta # Set beta branch
	git checkout v115 # Set v115 tag
	```
3. Run installation script

	#### Auto install script

	This script will lookup Thunderbird profiles location and enable a theme variant for your GTK theme if it exists.
	```sh
	./scripts/auto-install.sh
	```
	#### Install script
	```sh
	./scripts/install.sh # Standard
	./scripts/install.sh -f ~/.var/app/org.mozilla.Thunderbird/.thunderbird # Flatpak
	```

	##### Script options
	- `-f <thunderbird_folder_path>` *optional*
		- Set custom Thunderbird folder path.
		- Default: `~/.thunderbird`

	- `-p <profile_name>` *optional*
		- Set custom profile name, for example `e0j6yb0p.default-nightly`.
		- Default: All the profiles found in the thunderbird folder

	- `-t <theme_name>` *optional*
		- Set the colors used in the theme.
		- Default: Adwaita.
		- Options: `adwaita`, `maia`.


### Required Thunderbird preferences
We provide a **user.js** configuration file in `configuration/user.js` that enable some preferences required by this theme to work.

You should already have this file installed if you followed one of the installation methods, but in any case be sure this preferences are enabled under Thunderbird's `Config Editor`:

- `toolkit.legacyUserProfileCustomizations.stylesheets`

	This preference is required to load the custom CSS in Thunderbird, otherwise the theme wouldn't work.

- `svg.context-properties.content.enabled`

	This preference is required to recolor the icons, otherwise you will get black icons everywhere.

> For other non essential preferences checkout `configuration/user.js`.

## Updating

You can follow the installation script steps again to update the theme.

## Uninstalling
1. Go to your profile folder. Go to Menu > Help > More Troubleshooting Information >  Application Basics > Profile Directory > Open Directory)
2. Remove `chrome` folder.
3. Remove the unwanted preferences from your `user.js` inside your profile folder. The install script append the needed prefs in that file, you can check what preferences does it append by checking `configuration/user.js` in this repo.

## Enabling optional features
Optional features can be enabled by creating new `boolean` preferences in the config editor.

1. Go to the Thunderbird settings
2. Search for `config` and click on the `Config Editor` button when it is displayed
3. Type the key of the feature you want to enable
4. Set it as a `boolean` and click on the add button
5. Restart Thunderbird

### Features

- **Hide tabbar** `gnomeTheme.hideTabbar`

	Hides tabs bar with the menu bar. If you press `Alt` or enable menu bar it will be visible again.

- **Normal width tabs** `gnomeTheme.normalWidthTabs`

	Use normal width tabs as default Thunderbird.

- **Active tab contrast** `gnomeTheme.activeTabContrast`

	Add more contrast to the active tab.

## Credits
Developed by **[Rafael Mardojai CM](https://github.com/rafaelmardojai)** and [contributors](https://github.com/rafaelmardojai/thunderbird-gnome-theme/graphs/contributors). Based on the **[Firefox GNOME theme](https://github.com/rafaelmardojai/firefox-gnome-theme)**.

## Donate
If you want to support development, consider donating via [PayPal](https://paypal.me/RafaelMardojaiCM). Also consider donating upstream, [Thunderbird](https://www.thunderbird.net/?form=support) & [GNOME](https://www.gnome.org/support-gnome/).
