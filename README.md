# my macOS Customizations

## Download & Install List

- Xcode
- Visual Studio Code
- iTerm2
- SourceTree
- Homebrew
- `Meslo LG S DZ Regular for Powerline` font
- `Meslo LG S Bold for Powerline` font

## vscode Settings

- Install **Settings Sync** extension.
- Open **Settings Sync** extension, click **"Login with GitHub"** and login GitHub account.
- Then **"Select Your Existing Gist"** :
  - vscode.sync (b34669959e4d5d9f89054ec0dfa980a3)
- Open View -> Command Palette ( Shift + Command + P) and Run **">Sync: Download Settings"**

## Installing software via Homebrew

All software installed on the system must be listed in `.Brewfile`. This is
symlinked at `~/.Brewfile` and used by `brew bundle`.

To install all the software, add it to `.Brewfile` and run:

    brew bundle --global

Some stuff will take long, in that case, identify which packages and update
`.Brewfile` to install them with `args: ['force-bottle']` or do a one-off
`brew install --force-bottle [pkg]` install.

## iTerm2 Settings

Open `iTerm2` and
    `Preferences` -> `Profiles` -> `Other Actions` and click `Import JSON Profiles..`
    select `my-profile.json`

## oh-my-zsh Settings

### Install

- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [powerlevel9k theme for oh-my-zsh](https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions#option-2-install-for-oh-my-zsh)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)

```shell
echo "POWERLEVEL9K_SHORTEN_DIR_LENGTH=1" >> ~/.oh-my-zsh/oh-my-zsh.sh
```

## Create a SSH Key
  
```shell
ssh-keygen -t rsa
```

## Git Settings

```shell
git config --global user.name "Ali Can Kuştemur"
git config --global user.email "alican.kustemur@gmail.com"
git config --global credential.helper osxkeychain
```

## Tweaks

```shell
defaults write NSGlobalDomain AppleShowScrollBars -string "Always" # show scrollbar always
defaults write com.apple.finder AppleShowAllFiles true   # Show hidden files
defaults write com.apple.finder ShowStatusBar -bool true # Show Finder statusbar

# Default Finder location is the home folder
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
  defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

# disable smart quotes and dashes
defaults write 'Apple Global Domain' NSAutomaticDashSubstitutionEnabled 0
defaults write 'Apple Global Domain' NSAutomaticQuoteSubstitutionEnabled 0
defaults write 'Apple Global Domain' NSAutomaticPeriodSubstitutionEnabled 0


# change screenshot location
mkdir ~/Desktop/SS
defaults write com.apple.screencapture location ~/Desktop/SS
```

## Copy Files

Copy `.bash_profile`, `oh-my-zsh.sh` and `.zshrc` to `~/

## Installing software manually

- Download LastPass Browser Extensions and mac app
