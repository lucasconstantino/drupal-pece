cd ~/pece
drush kw-b
cd build
drush kw-m
drush cc all
drush updb -y
drush fra -y
drush clsyn
if [ -d "profiles/pece/themes/taller/assets/sass/" ]; then
  cd profiles/pece/themes/taller/assets/sass/
  bundle install
  bundle exec compass compile
fi
cd ~/pece/build
if [ -d "profiles/pece/themes/pece/assets/sass/" ]; then
  cd profiles/pece/themes/pece/assets/sass/
  bundle install
  bundle exec compass compile
fi
cd ~/pece/build
if [ -d "profiles/pece/themes/ember" ]; then
  cd profiles/pece/themes/ember
  bundle install
  bundle exec compass compile
fi
cd ~/pece
