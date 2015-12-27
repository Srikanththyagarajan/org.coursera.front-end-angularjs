
JSERV_DIR=../json-server
DB_JSON=db.json
WORK_DIR=../conFusion

# http://stackoverflow.com/questions/30667239/is-it-possible-to-install-npm-package-only-if-it-has-not-been-already-installed
# [ $(node -p "require('json-server/package.json').version") != "0.8.4" ] && sudo npm install json-server@0.8.4 -g

cd $WORK_DIR

npm install jasmine-core --save-dev
sudo npm install karma-cli -g
npm install karma-jasmine --save-dev
npm install phantomjs karma-phantomjs-launcher karma-chrome-launcher --save-dev
npm install phantomjs karma-phantomjs-launcher karma-firefox-launcher --save-dev

bower install angular-mocks -S


