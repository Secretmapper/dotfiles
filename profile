export PATH="$PATH:~/.composer/vendor/bin"

export NVM_DIR="/Users/secretmapper/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export NODE_PATH=$NODE_PATH:/Users/secretmapper/.node/lib/node_modules
export PATH="/Users/secretmapper/.node/bin:$PATH"

source /usr/local/bin/virtualenvwrapper.sh

export PACKAGE_DIRS="/Users/secretmapper/code/meteor/packages"
## export NODE_PATH=/Users/secretmapper/.nvm/v0.10.33/lib/node_modules:/Users/secretmapper/.node/lib/node_modules

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# instead of aliasing, symlinks to override SPECIFIC system binaries
# ln -s /usr/local/bin/vim /usr/local/bin/bin-override
export PATH="/usr/local/bin:/usr/local/bin/bin-override:$PATH"
export PATH="/usr/local/Cellar/ruby/2.6.1/bin:$PATH"

export MAGICK_HOME="$HOME/Desktop/ImageMagick-6.9.0"
export PATH="$MAGICK_HOME/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig/:/usr/X11/lib/pkgconfig/:/opt/X11/lib/pkgconfig/
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$HOME/.fastlane/bin:$PATH"

export PGDATA=/usr/local/var/posters
alias tm="tmuxinator"
alias v="nvim"
alias aseprite="$HOME/Library/Application\ Support/Steam/steamapps/common/Aseprite/Aseprite.app/Contents/MacOS/aseprite"
alias vi="nvim"
alias vim="nvim"
export EDITOR="vim"

code () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}

# install
# npm
# js-beautify
# tern
# vim (inside npm)
# export PATH="$HOME/.rbenv/bin:$PATH"

## arduino
export ARDUINO_DIR="/Applications/Arduino.app/Contents/Resources/Java"
export ARDMK_DIR="/usr/local"
export AVR_TOOLS_DIR="/usr"
export MONITOR_PORT="/dev/ttyACM0"
export BOARD_TAG="mega2560"
export PATH="$ARDMK_DIR/bin/:$PATH"

# :/ arli has a weird bin it seems
export PATH="/usr/local/lib/ruby/gems/2.6.0/gems/arli-1.4.0/exe:$PATH"
## arduino end

export PATH="$HOME/.cargo/bin:$PATH"
eval "$(pyenv init -)"
#ADDED BY 010 EDITOR
export PATH="$PATH:/Applications/010 Editor.app/Contents/CmdLine"
export PATH="$HOME/esp/xtensa-esp32-elf/bin:$PATH"
export PATH="$HOME/frameworks/flex/bin:$PATH"
export IDF_PATH=~/esp/esp-idf
export EDITOR="nvim"
