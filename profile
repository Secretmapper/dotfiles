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
export PATH="/usr/local/bin/bin-override:$PATH"

export MAGICK_HOME="$HOME/Desktop/ImageMagick-6.9.0"
export PATH="$MAGICK_HOME/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig/:/usr/X11/lib/pkgconfig/:/opt/X11/lib/pkgconfig/
export ANDROID_HOME=/usr/local/opt/android-sdk

export PGDATA=/usr/local/var/posters
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
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
