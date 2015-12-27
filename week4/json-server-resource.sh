
JSERV_DIR=../json-server
DB_JSON=db.json
WORK_DIR=../conFusion

if [ ! -f $DB_JSON ]; then
	echo "Downloading database file ($DB_JSON)."
	curl --output ./DB_JSON $DB_JSON
else
	echo "Database file ($DB_JSON) already exists."
fi 

if [ ! -d $JSERV_DIR ]; then
	echo "Creating json-server directory."
	mkdir -p $JSERV_DIR
fi

if [ ! -f $JSERV_DIR/$DB_JSON ]; then
	cp ./$DB_JSON $JSERV_DIR/
fi

# http://stackoverflow.com/questions/30667239/is-it-possible-to-install-npm-package-only-if-it-has-not-been-already-installed
# [ $(node -p "require('json-server/package.json').version") != "0.8.4" ] && sudo npm install json-server@0.8.4 -g
sudo npm install json-server -g

cd $WORK_DIR
bower install angular-resource -S
gulp

rm -fR $JSERV_DIR/public
cp -r ./dist/ $JSERV_DIR/public/

cd $JSERV_DIR
json-server --watch db.json
