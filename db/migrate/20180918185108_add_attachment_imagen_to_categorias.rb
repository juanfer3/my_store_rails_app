class AddAttachmentImagenToCategorias < ActiveRecord::Migration[5.1]
  def self.up
    change_table :categorias do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :categorias, :imagen
  end
end
