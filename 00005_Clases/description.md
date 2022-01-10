Si tenemos más de un objeto que se comporta **exactamente** de la misma forma, lo que podemos hacer es generalizar ese comportamiento definiendo una **clase**. Por ejemplo, si tenemos dos celulares con el mismo saldo y ambos tienen las mismas funcionalidades, `realizar_llamada!` y `cargar_saldo!` :iphone: :

```ruby
module CelularDeMaría
  @saldo = 25
  
  def self.realizar_llamada!
    @saldo -= 5
  end
  
  def self.cargar_saldo!(pesos)
    @saldo += pesos
  end
end

module CelularDeLucrecia
  @saldo = 25
  
  def self.realizar_llamada!
    @saldo -= 5
  end
  
  def self.cargar_saldo!(pesos)
    @saldo += pesos
  end
end
```

Podemos generalizarlos en una **clase** `Celular`:

```ruby
class Celular
  def initialize
    @saldo = 25
  end
  
  def realizar_llamada!
    @saldo -= 5
  end
  
  def cargar_saldo!(pesos)
    @saldo += pesos
  end
end
```

> Veamos si se entiende: como `Bouba` y `Kiki` se comportan exactamente de la misma forma, **generalizalos** definiendo una clase `Zombi` que entienda los mismos cinco mensajes que ellos. Podés ver las definiciones de ambos zombis en la solapa Biblioteca. 