class AddAttachmentImagenToContenedoresImagenesArticulos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :contenedores_imagenes_articulos do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :contenedores_imagenes_articulos, :imagen
  end
end
