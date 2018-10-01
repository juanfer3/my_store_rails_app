require 'test_helper'

class ContenedoresImagenesArticulosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contenedor_imagenes_articulo = contenedores_imagenes_articulos(:one)
  end

  test "should get index" do
    get contenedores_imagenes_articulos_url
    assert_response :success
  end

  test "should get new" do
    get new_contenedor_imagenes_articulo_url
    assert_response :success
  end

  test "should create contenedor_imagenes_articulo" do
    assert_difference('ContenedorImagenesArticulo.count') do
      post contenedores_imagenes_articulos_url, params: { contenedor_imagenes_articulo: { nombre: @contenedor_imagenes_articulo.nombre } }
    end

    assert_redirected_to contenedor_imagenes_articulo_url(ContenedorImagenesArticulo.last)
  end

  test "should show contenedor_imagenes_articulo" do
    get contenedor_imagenes_articulo_url(@contenedor_imagenes_articulo)
    assert_response :success
  end

  test "should get edit" do
    get edit_contenedor_imagenes_articulo_url(@contenedor_imagenes_articulo)
    assert_response :success
  end

  test "should update contenedor_imagenes_articulo" do
    patch contenedor_imagenes_articulo_url(@contenedor_imagenes_articulo), params: { contenedor_imagenes_articulo: { nombre: @contenedor_imagenes_articulo.nombre } }
    assert_redirected_to contenedor_imagenes_articulo_url(@contenedor_imagenes_articulo)
  end

  test "should destroy contenedor_imagenes_articulo" do
    assert_difference('ContenedorImagenesArticulo.count', -1) do
      delete contenedor_imagenes_articulo_url(@contenedor_imagenes_articulo)
    end

    assert_redirected_to contenedores_imagenes_articulos_url
  end
end
