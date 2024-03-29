import json
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
    '''def imprimir(self):
        print("Contenido del carrito:")
        for item_id, item_info in self.carrito.items():
            print("---------------------------")
            print(f"ID del producto: {item_info['producto_id']}")
            print(f"Nombre del producto: {item_info['nombre']}")
            print(f"Cantidad: {item_info['cantidad']}")
            print(f"Acumulado: {item_info['acumulado']}")
            print("---------------------------")
            print("Contenido del diccionario:")'''
####Imprimir el carrito como un archivo Json
    def imprimir(self, nombre_archivo):
        '''self.carrito['usuario'] = {
            'username': self.usuario.username,
            'user_id': self.usuario.id
        }'''
        print(f"Usuario: {self.usuario.username}")
        print(f"ID: {self.usuario.id}")
        print("Contenido del carrito:")
        for item_id, item_info in self.carrito.items():
            print(f"{item_id}: {item_info}")
        with open(nombre_archivo, 'w') as archivo:
            json.dump(self.carrito, archivo, indent=4)