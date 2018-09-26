class Articulo < ApplicationRecord
  belongs_to :categoria

  has_attached_file :imagen, styles: {large: "600x600", medium: "288x180",thumb: "150x150"}
  validates_attachment_content_type :imagen,content_type: /\Aimage\/.*\z/

end
