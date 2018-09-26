class CreateArticulos < ActiveRecord::Migration[5.1]
  def change
    create_table :articulos do |t|
      t.references :categoria, foreign_key: true
      t.string :nombre
      t.text :descripcion
      t.float :cantidad
      t.float :precio
      t.boolean :nuevo

      t.timestamps
    end
  end
end
