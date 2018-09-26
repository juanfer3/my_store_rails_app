json.extract! articulo, :id, :categoria_id, :nombre, :descripcion, :cantidad, :precio, :nuevo, :created_at, :updated_at
json.url articulo_url(articulo, format: :json)
