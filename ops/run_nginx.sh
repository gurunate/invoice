#!/bin/bash

sudo docker run -d --name nginx -p 80:80 -v /home/nate/dev/invoice/webapp:/usr/share/nginx/html:ro nginx
