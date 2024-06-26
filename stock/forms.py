from django import forms
from django.forms import ModelForm
from .models import Producto
class NuevoForm(ModelForm):
    class Meta:
        model= Producto
        fields=('codigo', 'categoria' , 'marca' , 'descripcion' , 'cantidad' , 'iva' ,'utilidad' , 'precioCosto' )
        widgets ={
            'codigo': forms.NumberInput(attrs={'class': 'form-control','id':'codigo','style': 'width: 150px'}),
            'categoria': forms.Select(attrs={'class': 'form-select','style': 'width: 220px'}),
            'marca': forms.Select(attrs={'class': 'form-select','id':'marca','style': 'width: 220px'}),
            'descripcion': forms.TextInput(attrs={'class': 'form-control', 'id':'descripcion','style': 'width: 500px'}),
            'cantidad': forms.NumberInput(attrs={'class': 'form-control','id':'cantidad','style': 'width: 150px'}),
            'iva': forms.Select(attrs={'class': 'form-select','style': 'width: 220px'}),
            'utilidad': forms.Select(attrs={'class': 'form-select','style': 'width: 220px'}),
            'precioCosto': forms.NumberInput(attrs={'class': 'form-control','style': 'width: 150px'}),
        }
        labels = {
            'precioCosto': 'Precio Costo',
        }
    def __init__(self, *args, **kwargs):
        super(NuevoForm, self).__init__(*args, **kwargs)
        self.fields['categoria'].empty_label = 'Seleccione la Categoría'
        self.fields['marca'].empty_label = 'Seleccione la Marca'
        self.fields['utilidad'].empty_label = 'Seleccione la Utilidad'
        self.fields['iva'].empty_label = 'Seleccione el I.V.A.'



class ProductoForm(ModelForm):
    class Meta:
        model= Producto
        fields=('codigo', 'categoria' , 'marca' , 'descripcion' , 'cantidad' , 'iva' , 'utilidad' ,'precioCosto')
        widgets ={
            'codigo': forms.NumberInput(attrs={'class': 'form-control','id':'codigo','style': 'width: 150px'}),
            'categoria': forms.Select(attrs={'class': 'form-select','style': 'width: 150px','placeholder': 'Seleccione la categoría'}),
            'marca': forms.Select(attrs={'class': 'form-select','id':'marca','style': 'width: 150px','placeholder': 'Seleccione la marca'}),
            'descripcion': forms.TextInput(attrs={'class': 'form-control', 'id':'descripcion','style': 'width: 500px'}),
            'cantidad': forms.NumberInput(attrs={'class': 'form-control','id':'cantidad','style': 'width: 150px'}),
            'iva': forms.Select(attrs={'class': 'form-select','style': 'width: 220px'}),
            'utilidad': forms.Select(attrs={'class': 'form-select','style': 'width: 150px','placeholder': 'Seleccione la utilidad'}),     
            'precioCosto': forms.NumberInput(attrs={'class': 'form-select','style': 'width: 150px'}),            
        }
        labels = {
            'precioCosto': 'Precio Costo',
        }
            
class ProductoBusqueda(forms.Form):
    descripcion = forms.CharField(
        max_length=50,
        label= '',
        widget=forms.TextInput(attrs={'class': 'form-control-outline','style': 'width: 300px;','placeholder':'Ingrese la Busqueda'})
    )

class ProductoCantidad(forms.Form):
    cantidad = forms.IntegerField(
        max_value=9999,
        min_value=0,
        label='',        
        widget=forms.NumberInput(attrs={'class': 'form-control-outline','style': 'width: 65px; height: 25px; text-align: right'})
    )
