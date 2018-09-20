class AddAttachmentIconoToCategorias < ActiveRecord::Migration[5.1]
  def self.up
    change_table :categorias do |t|
      t.attachment :icono
    end
  end

  def self.down
    remove_attachment :categorias, :icono
  end
end
