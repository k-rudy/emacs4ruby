# Initializing submodules
echo 'Updating submodules... '
git submodule update

#
# RSense
#
if ! [ ${RSENSE_HOME} ]; then
  echo 'Adding RSENSE_HOME environment variable...'
  export RSENSE_HOME=~/.emacs.d/vendor/rsense
  echo 'export RSENSE_HOME=~/.emacs.d/vendor/rsens/.emacs.d/vendor/rsense' >> ~/.bashrc
  echo $RSENSE_HOME
fi
echo $RSENSE_HOME
