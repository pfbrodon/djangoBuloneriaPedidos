from django.db import models
from django.contrib.auth.models import User


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
    
class Iva(models.Model):
    ivaValor = models.FloatField(default=0.0)
    ivaDescripcion = models.CharField(max_length= 10)
    def __str__(self):
        return str(self.ivaValor)

    
class Producto(models.Model):
    categoria = models.ForeignKey(Categorias, on_delete=models.CASCADE)
    marca = models.ForeignKey(Marcas, on_delete=models.CASCADE)
    codigo = models.IntegerField()
    descripcion = models.CharField(max_length = 150)
    cantidad = models.IntegerField()
    precioCosto = models.FloatField(default=0.0)
    iva = models.ForeignKey(Iva, default=1, on_delete=models.CASCADE)
    utilidad = models.ForeignKey(Utilidad, on_delete=models.CASCADE)
    precioPublico= models.FloatField(default=0.0)

class Pedidosnumtest(models.Model):
    pedidoUser = models.CharField(max_length=50)
    pedidoIdUser = models.IntegerField()
    pedidoFecha = models.DateTimeField(auto_now_add=True)
    pedidoTotal = models.FloatField(default=0.0)
    pedidoCodigo = models.CharField(max_length=10, unique=True)
    def save(self, *args, **kwargs):
        if not self.pedidoCodigo:
            last_user_id = self.pedidoIdUser
            last_object = Pedidosnumtest.objects.order_by('id').last()
            if last_object:
                self.pedidoCodigo = f'C{str(last_user_id).zfill(3)}P{str((last_object.id)+1).zfill(4)}'
            else:
                self.pedidoCodigo = f'C{str(last_user_id).zfill(3)}P0001'
        super(Pedidosnumtest, self).save(*args, **kwargs)
            
class Pedidostest(models.Model):
    numPedido= models.ForeignKey(Pedidosnumtest, on_delete=models.CASCADE)
    id_producto = models.IntegerField()
    nombre_producto = models.CharField(max_length=100)
    cantidad = models.IntegerField()
    acumulado = models.DecimalField(max_digits=10, decimal_places=2)


def __str__(self):
        return self.title +'-by '+ self.user.username #muestra el titulo de la tarea en la administracion de django