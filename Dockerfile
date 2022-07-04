# clone repositories

git clone https://github.com/manoutbar/agosuirpa-frontend
git clone https://github.com/manoutbar/agosuirpa

# frontend building

run `source ~/.bashrc &&
     cd agosuirpa-frontend &&
     nvm use &&
     nvm install &&
     sudo apt install -y yarn &&
     yarn install &&
     yarn relocate`

# backend building

run `cd ../agosuirpa &&
     mkdir staticfiles &&
     pip3 install -r requirements.txt &&
     python3 manage.py makemigrations &&
     python3 manage.py migrate &&
     python3 manage.py loaddata configuration/db_populate.json &&
     python3 manage.py collectstatic --noinput`

# launch server
run echo "gunicorn -b 0.0.0.0:8000 agosuirpa.wsgi:application" > Procfile

    




