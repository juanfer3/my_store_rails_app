class CreateContenedoresImagenesArticulos < ActiveRecord::Migration[5.1]
  def change
    create_table :contenedores_imagenes_articulos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
