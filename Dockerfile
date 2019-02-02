FROM        python:3.7.2-slim
MAINTAINER  dev@lhy.kr

# 설치할 패키지 정보가 담긴 파일을 Image의 /tmp/에 복사
COPY        requirements.txt    /tmp/requirements.txt

# requirements.txt파일을 이용해서 Image에 파이썬 패키지 설치
RUN         pip install -r /tmp/requirements.txt

# 현재 디렉토리의 모든 내용을 Image의 /srv/ 경로에 복사
COPY        . /srv/

# 복사한 소스 경로로 이동 후 개발서버를 8000번 포트로 실행
WORKDIR     /srv/mysite
CMD         python manage.py runserver 0:8000
