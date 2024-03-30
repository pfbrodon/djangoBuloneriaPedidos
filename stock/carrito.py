import json
from .models import Pedidostest, Pedidosnumtest
class Carrito:
    def __init__(self, request):
        self.request = request
        self.session = request.session
        self.usuario = request.user
        carrito = self.session.get("carrito")
        if not carrito:
            self.session["carrito"] = {}
            self.carrito = self.session["carrito"]
        else:
            self.carrito = carrito
            

    def agregar(self, producto):
        id = str(producto.id)
        if id not in self.carrito.keys():
            self.carrito[id]={
                "producto_id": producto.id,
                "nombre": producto.descripcion,
                "acumulado": round(producto.precioCosto * producto.utilidad.utilValor, 2),
                "cantidad": 1,
            }
        else:
            self.carrito[id]["cantidad"] += 1
            self.carrito[id]["acumulado"] += round(producto.precioCosto * producto.utilidad.utilValor, 2)
        self.guardar_carrito()

    def guardar_carrito(self):
        self.session["carrito"] = self.carrito
        self.session.modified = True
        print("Contenido del carrito:")
        #self.imprimir() #anulado hasta que se modifique finaly se pase el nombre del archivo desde la vista
                

    def eliminar(self, producto):
        id = str(producto.id)
        if id in self.carrito:
            del self.carrito[id]
            self.guardar_carrito()

    def restar(self, producto):
        id = str(producto.id)
        if id in self.carrito.keys():
            self.carrito[id]["cantidad"] -= 1
            self.carrito[id]["acumulado"] -= round(producto.precioCosto * producto.utilidad.utilValor, 2)
            if self.carrito[id]["cantidad"] <= 0: self.eliminar(producto)
            self.guardar_carrito()

    def limpiar(self):
        self.session["carrito"] = {}
        self.session.modified = True
####Imprimir y Borrar carrito        
    '''def imprimir(self):
        self.session["carrito"] = {}
        self.session.modified = True
        print("Contenido del carrito:")
        for item_id, item_info in self.carrito.items():
            print("---------------------------")
            print(f"ID del producto: {item_info['producto_id']}")
            print(f"Nombre del producto: {item_info['nombre']}")
            print(f"Cantidad: {item_info['cantidad']}")
            print(f"Acumulado: {item_info['acumulado']}")
            print("---------------------------")'''
####Solo imprimir el carrito          
    def imprimir(self):
        print("Contenido del carrito:")
        # Guardar Numero de Pedido generado automaticamente en el campo de la tabla
        '''numpedido = Pedidosnumtest.objects.create(
            pedidoUser=self.usuario.username,
            pedidoIdUser=self.usuario.id,
        )'''
        # Crear un nuevo pedido y obtener el número de pedido generado automáticamente
        nuevo_pedido = Pedidosnumtest.objects.create(
            pedidoUser=self.usuario.username,
            pedidoIdUser=self.usuario.id,
        )
        numero_pedido = nuevo_pedido.id  # Guardar el número de pedido generado
        
        # Hacer algo con el número de pedido, por ejemplo, imprimirlo
        print("Número de Pedido:", numero_pedido)
        #nuevoPedido={}
        for item_id, item_info in self.carrito.items():
            # Crear una instancia del modelo Pedido y guardarla en la base de datos
            pedido = Pedidostest.objects.create(
                numPedido=nuevo_pedido,
                id_producto=item_info['producto_id'],
                nombre_producto=item_info['nombre'],
                cantidad=item_info['cantidad'],
                acumulado=item_info['acumulado']
            )
