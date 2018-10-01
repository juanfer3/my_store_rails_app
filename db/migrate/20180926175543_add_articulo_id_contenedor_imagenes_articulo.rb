class AddArticuloIdContenedorImagenesArticulo < ActiveRecord::Migration[5.1]
  def change
    add_reference :contenedores_imagenes_articulos, :articulo, foreign_key: true
    
  end
end
