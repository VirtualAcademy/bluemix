#!/bin/bash

#echo STARTING RUN.SH FOR DJANGO SERVER PORT
#
#echo ENVIRONMENT VARIABLES IN RUN.SH
#printenv

if [ -z "$VCAP_APP_PORT"];
	then SERVER_PORT=5000;
	else SERVER_PORT="$VCAP_APP_PORT";
fi



echo [$0] port is------------------------- $SERVER_PORT
python manage.py migrate --noinput
echo "from django.contrib.auth.models import User; User.objects.create_superuser('cho', 'cho_ndi@yahoo.com', 'cho123')" | python manage.py shell


echo port is $SERVER_PORT
python manage.py runserver --noreload 0.0.0.0:$SERVER_PORT