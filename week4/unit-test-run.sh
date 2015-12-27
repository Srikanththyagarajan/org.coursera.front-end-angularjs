
JSERV_DIR=../json-server
DB_JSON=db.json
WORK_DIR=../conFusion

# http://stackoverflow.com/questions/30667239/is-it-possible-to-install-npm-package-only-if-it-has-not-been-already-installed
# [ $(node -p "require('json-server/package.json').version") != "0.8.4" ] && sudo npm install json-server@0.8.4 -g

cd $WORK_DIR/test

karma start karma.conf.js
