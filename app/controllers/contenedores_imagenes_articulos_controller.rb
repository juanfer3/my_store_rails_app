class ContenedoresImagenesArticulosController < ApplicationController
  before_action :set_contenedor_imagenes_articulo, only: [:show, :edit, :update, :destroy]

  # GET /contenedores_imagenes_articulos
  # GET /contenedores_imagenes_articulos.json
  def index
    @contenedores_imagenes_articulos = ContenedorImagenesArticulo.all
  end

  # GET /contenedores_imagenes_articulos/1
  # GET /contenedores_imagenes_articulos/1.json
  def show
  end

  # GET /contenedores_imagenes_articulos/new
  def new
    @contenedor_imagenes_articulo = ContenedorImagenesArticulo.new
  end

  # GET /contenedores_imagenes_articulos/1/edit
  def edit
  end

  # POST /contenedores_imagenes_articulos
  # POST /contenedores_imagenes_articulos.json
  def create
    @contenedor_imagenes_articulo = ContenedorImagenesArticulo.new(contenedor_imagenes_articulo_params)

    respond_to do |format|
      if @contenedor_imagenes_articulo.save
        format.html { redirect_to @contenedor_imagenes_articulo, notice: 'Contenedor imagenes articulo was successfully created.' }
        format.json { render :show, status: :created, location: @contenedor_imagenes_articulo }
      else
        format.html { render :new }
        format.json { render json: @contenedor_imagenes_articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contenedores_imagenes_articulos/1
  # PATCH/PUT /contenedores_imagenes_articulos/1.json
  def update
    respond_to do |format|
      if @contenedor_imagenes_articulo.update(contenedor_imagenes_articulo_params)
        format.html { redirect_to @contenedor_imagenes_articulo, notice: 'Contenedor imagenes articulo was successfully updated.' }
        format.json { render :show, status: :ok, location: @contenedor_imagenes_articulo }
      else
        format.html { render :edit }
        format.json { render json: @contenedor_imagenes_articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contenedores_imagenes_articulos/1
  # DELETE /contenedores_imagenes_articulos/1.json
  def destroy
    @contenedor_imagenes_articulo.destroy
    respond_to do |format|
      format.html { redirect_to contenedores_imagenes_articulos_url, notice: 'Contenedor imagenes articulo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contenedor_imagenes_articulo
      @contenedor_imagenes_articulo = ContenedorImagenesArticulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contenedor_imagenes_articulo_params
      params.require(:contenedor_imagenes_articulo).permit(:nombre, :imagen)
    end
end
