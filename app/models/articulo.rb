class Articulo < ApplicationRecord
  belongs_to :categoria

  has_many :contenedores_imagenes_articulos , inverse_of: :articulo, dependent: :destroy
  accepts_nested_attributes_for :contenedores_imagenes_articulos, reject_if: :all_blank, allow_destroy: true

  has_attached_file :imagen, styles: {large: "600x600", medium: "288x180",thumb: "150x150"}
  validates_attachment_content_type :imagen,content_type: /\Aimage\/.*\z/
end
