from django.db import models

# Create your models here.
class Utilidad(models.Model):
    utilValor = models.FloatField()
    utilDescripcion = models.CharField(max_length = 100)
    def __str__ (self):
        return str(self.utilValor)
    
class Categorias (models.Model):
    catNom = models.CharField(max_length = 50)
    catDescripcion= models.CharField(max_length=100)
    def __str__(self):
        return self.catNom
    
class Marcas(models.Model):
    marcaNom = models.CharField(max_length = 50)
    marcaDescripcion= models.CharField(max_length=100)
    def __str__(self):
        return self.marcaNom
    
class Producto(models.Model):
    categoria = models.ForeignKey(Categorias, on_delete=models.CASCADE)
    marca = models.ForeignKey(Marcas, on_delete=models.CASCADE)
    codigo = models.IntegerField()
    descripcion = models.CharField(max_length = 150)
    cantidad = models.IntegerField()
    precioCosto = models.FloatField(default=0.0)
    utilidad = models.ForeignKey(Utilidad, on_delete=models.CASCADE)
    precioPublico= models.FloatField(default=0.0)

class Pedidos(models.Model):
    pedioNum = models.IntegerField(default=0, auto_created=True)
    pedidoDescripcion= models.CharField(max_length=100)
    pedidoFecha = models.DateTimeField(auto_now_add=True)
    totalPedido= models.FloatField(default=0.0)


class Productopedido(models.Model):
    numpedido = models.ForeignKey(Pedidos, on_delete=models.CASCADE)
    categoria = models.ForeignKey(Categorias, on_delete=models.CASCADE)
    marca = models.ForeignKey(Marcas, on_delete=models.CASCADE)
    codigo = models.IntegerField()
    descripcion = models.CharField(max_length = 150)
    cantidad = models.IntegerField()
    precioPublico= models.FloatField(default=0.0)
    subtotalPedido= models.FloatField(default=0.0)

class Pedidostest(models.Model):
    usuario = models.CharField(max_length=100)
    id_usuario = models.IntegerField()
    id_producto = models.IntegerField()
    nombre_producto = models.CharField(max_length=100)
    cantidad = models.IntegerField()
    acumulado = models.DecimalField(max_digits=10, decimal_places=2)

def __str__(self):
        return self.title +'-by '+ self.user.username #muestra el titulo de la tarea en la administracion de django