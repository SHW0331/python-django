# 장고는 로그인, 로그아웃을 구현할 수 있도록 django.contrib.auth 앱을 제공
# 공통으로 사용되는 기능인 로그인, 아웃 기능을 users 앱을 만들어 구현
django-admin startapp users

# 앱 등록 settings.py
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    ...
    'users',
]

# urls.py에 url 연결
urlpatterns = [
  ...
  path('users/', include('users.urls')), # users>urls.py에서 관리할거야
]

# user앱의 urls.py 생성 후 등록
from django.urls import path
from .views import *

app_name = "users"
urlpatterns = [
    
]

# templates>users 디렉토리를 생성 후, login.html 생성 후 login url연결
# django.contrib.auth앱의 LoginView 클래스를 활용했으므로 별도의 views.py 파일 수정이 필요 없음
from django.urls import path
from django.contrib.auth import views as auth_views

app_name = "users"
urlpatterns = [
    path('login/', auth_views.LoginView.as_view(template_name='users/login.html'), name='login'),
]
