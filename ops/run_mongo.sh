#!/bin/bash

sudo docker run -d -p 27017:27017 -p 28017:28017 -v /var/lib/mongodb/:/data/db tutum/mongodb

