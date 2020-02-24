# flask Restful API 

## Setup
### step 1 Python install virtual environments lib
pip install virtualenvwrapper-win
### step 2 Python create virtual environments
mkvirtualenv _{Name virtual environments}_
### step 3 Python virtual environments workon
workon _{Name virtual environments}_
### step 4 Python lib install to virtual environments 
pip install -r requirements.txt
> if don't want virtual environments, can pass step 2-3


## Start project flask

first Python Flask API

pip install -r requirements.txt

### step 1 Python virtual environments workon 
workon {Name virtual environments}
> if haven't virtual environments, can pass step 1
### step 2 Run Python
python app.py

## docker build and complie 
### step 1 
docker build -t flask_api:latest .
### step 2
docker run --name flask -i -d -p 5432:5000 flask_api:latest
<!-- docker run --name flask --restart=always -i -d -p 5001:5000 flask_api:latest -->
### step 3 
open -a "Google Chrome"  http://127.0.0.1:5001/


<!-- Quick Start -->
<!-- If you are not already logged in, you need to authenticate to the Container Registry by using your GitLab username and password. If you have Two-Factor Authentication enabled, use a Personal Access Token instead of a password. -->


<!-- You can add an image to this registry with the following commands: -->
docker build -t flask_api:latest .
docker login registry.gitlab.com
docker build -t registry.gitlab.com/thepnatee.p/flask-restfulapi .
docker push registry.gitlab.com/thepnatee.p/flask-restfulapi

docker stop flask
docker rm flask
docker system prune -a
docker run --name flask -i -d -p 5000:5000 registry.gitlab.com/thepnatee.p/flask-restfulapi