# 기본적인 설치 및 환경 구성

pip install django
django-admin startproject name #project name 

# 기존 프로젝트 config
django-admin startproject config. #현재 폴더에 프로젝트 구성

# start
cd nihon (프로젝트 폴더)
python manage.py makemigrations
python manage.py migrate

# 서버 실행
python manage.py runserver


# Detail
MTV 모델 (MVC 모델과 같음)

Model = 서버가 가지고 있는 데이터베이스 작업
View = 사용자에게 보여지는 페이지
Controller = Model에 작업을 요청

여기서 View가 Template로 바뀜 --> 끝


# Django에서는 애플리케이션 단위로 웹 페이지를 개발
# project 폴더에서 실행 
python manage.py startapp login

# login 폴더에 View를 설정하고 나면 url 등록해야 함
# login 폴더에 urls.py 생성 후 설정
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
]

# 마지막으로 application에 넣어줌
# nihon 폴더안에 urls에 추가
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path("login/", include('login.urls')),
    path("admin/", admin.site.urls),
]
