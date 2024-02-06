from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('signup/', views.signup, name='signup'),
    path('logout/', views.signout, name='logout'),
    path('signin/', views.signin, name='signin'),
    path('stock/', views.stock, name='stock'),
    path('stock/nuevo/', views.nuevo, name='nuevo'),
    path('stock/eliminar/<int:id>/', views.eliminar, name='eliminar'),
    path('stock/actualizar/<int:id>/', views.actualizar, name='actualizar'),
    path('stock/buscar/', views.buscar, name='buscar'),
    path('pedidos/', views.pedidos, name='pedidos'),
    path('pedidos/buscarp', views.buscarp, name='buscarp'),

]