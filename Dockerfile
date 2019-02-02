FROM        python:3.7.2-slim
MAINTAINER  dev@lhy.kr

# 실행할 명령어
RUN         pip install django

# cd(change directory)와 같은 효과
WORKDIR     /srv

RUN         django-admin startproject mysite
WORKDIR     /srv/mysite

# 이 이미지로 컨테이너를 run했을때 실행할 명령
CMD         python manage.py runserver 0:8000
