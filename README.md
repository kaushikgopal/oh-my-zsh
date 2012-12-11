A handful of functions, auto-complete helpers, and stuff that makes you shout...

This is originally taken from [robbyrussel's repo](https://github.com/robbyrussell/oh-my-zsh/)

> "OH MY ZSHELL!"

## Setup


     oh-my-zsh should work with any recent release of "zsh":http://www.zsh.org/, the minimumrecommended version is 4.3.9.

### The automatic installer... (do you trust me?)

You can install this via the command line with either `curl` or `wget`.

#### via `curl`

     curl -L https://github.com/kaushikgopal/oh-my-zsh/raw/master/tools/install.sh | sh

#### via `wget`

     wget --no-check-certificate https://github.com/kaushikgopal/oh-my-zsh/raw/master/tools/instal.sh -O - | sh

### The manual way


1. Clone the repository

       git clone git://github.com/kaushikgopal/oh-my-zsh.git ~/.oh-my-zsh

2. *OPTIONAL* Backup your existing ~/.zshrc file

       cp ~/.zshrc ~/.zshrc.orig

3. Create a new zsh config by copying the zsh template we've provided.

       cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

4. Set zsh as your default shell:

       chsh -s /bin/zsh

5. Start / restart zsh (open a new terminal is easy enough...)

### Problems?

You _might_ need to modify your PATH in ~/.zshrc if you're not able to find some commands after switching to _Oh My Zsh_.

## Usage


* enable the plugins you want in your ~/.zshrc@ (take a look at @plugins/@ to see what's possible)
** example: @plugins=(git osx ruby)@
* Theme support: Change the @ZSH_THEME@ environment variable in @~/.zshrc@.
** Take a look at the "current themes":https://wiki.github.com/robbyrussell/oh-my-zsh/themes that come bundled with _Oh My Zsh_.
* much much more...  take a look at @lib/@ what _Oh My Zsh_ offers...

## Useful


the "refcard":http://www.bash2zsh.com/zsh_refcard/refcard.pdf is pretty tasty for tips.

### Customization

If you want to override any of the default behavior, just add a new file (ending in @.zsh@) into the @custom/@ directory.
If you have many functions which go well together you can put them as a *.plugin.zsh file in the @custom/plugins/@ directory and then enable this plugin.
If you would like to override the functionality of a plugin distributed with oh-my-zsh, create a plugin of the same name in the @custom/plugins/@ directory and it will be loaded instead of the one in @plugins/@.


### Uninstalling

If you want to uninstall it, just run @uninstall_oh_my_zsh@ from the command line and it'll remove itself and revert you to bash (or your previous zsh config).

## Contributors

This project has bene forked from [robbyrussell's repo](https://github.com/robbyrussell/oh-my-zsh). All credit goes to him/his contributors.

Thank you so much!