
JSERV_DIR=../json-server
DB_JSON=db.json
WORK_DIR=../conFusion

if [ -d $JSERV_DIR ]; then
	echo "Deleting json-server directory."
	rm -fR $JSERV_DIR
fi

