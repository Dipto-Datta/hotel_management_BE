# Hotel Management


# Setting up pip and virtualenv

    1. Installing pip: sudo apt-get install python3-pip
    2. Installing Virtualenv : sudo pip3 install virtualenv
    3. Creating Virtualenv(Delete the previous first) : virtualenv venv
    4. Activation Virtualenv: source venv/bin/activate

# Default DB Settings
    *Use the given credentials for database or use credentials according to your own enviornment .
     DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'hotel',
        'USER': 'root',
        'PASSWORD': 'root',
        'HOST': 'localhost',
        'PORT': '3306',
        }
    }

# Creating Database
    1. Creating database (sql command) : create database *yourDatabaseName*;
    2. Use the existing dummy database backup (hm_db_10072023.sql) and import data to your new db;

# Django project setup
 
    1. Install libraries and dependancies : pip install -r req.txt
    2. Make migration files: python manage.py makemigrations    
    3. Migrate : python manage.py migrate
    4. Creating SuperUser : python manage.py createsuperuser     
    5. Run the development server: python manage.py runserver

# If mysqlclient error
    sudo apt-get install python3-dev default-libmysqlclient-dev build-essential

# If pillow install error
    pip install --only-binary Pillow Pillow
 
 # Setting up the project frontend
 
    1. Initialize the project : npm i
    2. Run development server: npm run serve
    3. If frontend initialization is not possible due to deprecated packages(optional): npm i --legacy-peer-deps

# User creds

        ﻿pos2	                      pos2@gmail.com	
	pos	                              pos@gmail.com	
	hod_finance	              fin@gmail.com	
	md	                              md@gmail.com	
	hod_accounts	              hodaccounts@gmail.com	
	manager	                      manager@gmail.com	
	accounts	                      accounts@gmail.com	
	bellboy	                      bellboy@gmail.com	
	roomservice	              room@gmail.com	
	housekeeper	              hk@gmail.com	
	frontdesk	                      farhan@gmail.com	
	admin


user: admin
Pass : Pass@123

rest of the user's password is Pass@1234﻿
 
