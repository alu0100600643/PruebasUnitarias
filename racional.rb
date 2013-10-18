# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

  #getters de la clase
  attr_accessor :num, :denom

  #método para inicializar la clase 
 def initialize(n1, n2)
    @num = n1
    @denom = n2

 end
  
 def to_s 
    
    "#{@num}/#{@denom}"
    
 end
  
  
 def +(objeto)
    
    minim = minimo(@denom, objeto.denom)
    miFraccion = minim/@denom 
    otraFraccion = minim/objeto.denom
  
    miFraccion2 = miFraccion  * @num
    otraFraccion2 = otraFraccion * objeto.num
   
    numerador = miFraccion2 + otraFraccion2
    mcd=gcd(numerador,minim)
    Fraccion.new(numerador/mcd , minim/mcd )
    
    
 end
  
 def minimo(a, b)
     
     min = (a*b)/gcd(a,b)

     
 end
    
    
    # devuelve un nuevo racional que resta al objeto que invoca el que le pasan como parámetro
 def -(objeto)                       
   min = minimo(@denom, objeto.denom)
   miFraccion = min/@denom 
   otraFraccion = min/objeto.denom
  
   miFraccion2 = miFraccion  * @num
   otraFraccion2 = otraFraccion * objeto.num
   
   numerador = miFraccion2 - otraFraccion2
   mcd = gcd(numerador, min)
   Fraccion.new(numerador/mcd , min/mcd )   
    
 end
   # devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
 def * (objeto)
     num1 = @num * objeto.num
     denom1 = @denom * objeto.denom
     mcd = gcd(num1, denom1)
     Fraccion.new(num1/mcd, denom1/mcd)
    
 end
  
 def / (objeto)
    num1 = @num * objeto.denom
    denom1 = @denom * objeto.num
    mcd = gcd( num1, denom1)
     Fraccion.new(num1/mcd, denom1/mcd)
 end

end



