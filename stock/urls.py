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
    #path('carrito/', views.carrito, name='carrito'),
    path('listapedidos/', views.listapedidos, name='listapedidos'),
    path('listapedidos/pedidodelete/<int:id>', views.pedidodelete, name='pedidodelete'),
    path('listapedidos/pedidodetalle/<int:id>', views.pedidodetalle, name='pedidodetalle'),
    #########################################
    path('agregar/<int:id>/', views.agregar_producto, name="agregar"),
    path('sumar/<int:id>/', views.sumar_producto, name="Add"),
    path('eliminar/<int:id>/', views.eliminar_producto, name="Del"),
    path('restar/<int:id>/', views.restar_producto, name="Sub"),
    path('limpiar/', views.limpiar_carrito, name="CLS"),
    path('guardar/<str:totalCarrito>', views.guardar_carrito, name="guardar"),

]