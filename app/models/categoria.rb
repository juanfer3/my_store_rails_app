class Categoria < ApplicationRecord
    has_attached_file :imagen, styles: {large: "600x600", medium: "300x300",thumb: "150x150"}
    validates_attachment_content_type :imagen,content_type: /\Aimage\/.*\z/

    has_attached_file :icono, styles: {large: "600x600", medium: "300x300",thumb: "150x150"}
    validates_attachment_content_type :icono,content_type: /\Aimage\/.*\z/
end
