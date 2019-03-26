class CrudsController < ApplicationController
  before_action :set_crud, only: [:show, :edit, :update, :destroy]

  # GET /cruds
  # GET /cruds.json
  def index
    @cruds = Crud.all
  end

  # GET /cruds/1
  # GET /cruds/1.json
  def show
  end

  # GET /cruds/new
  def new
    @crud = Crud.new
  end

  # GET /cruds/1/edit
  def edit
  end

  # POST /cruds
  # POST /cruds.json
  def create
    @crud = Crud.new(crud_params)

    respond_to do |format|
      if @crud.save
        format.html { redirect_to @crud, notice: 'Crud was successfully created.' }
        format.json { render :show, status: :created, location: @crud }
      else
        format.html { render :new }
        format.json { render json: @crud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cruds/1
  # PATCH/PUT /cruds/1.json
  def update
    respond_to do |format|
      if @crud.update(crud_params)
        format.html { redirect_to @crud, notice: 'Crud was successfully updated.' }
        format.json { render :show, status: :ok, location: @crud }
      else
        format.html { render :edit }
        format.json { render json: @crud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cruds/1
  # DELETE /cruds/1.json
  def destroy
    @crud.destroy
    respond_to do |format|
      format.html { redirect_to cruds_url, notice: 'Crud was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crud
      @crud = Crud.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crud_params
      params.fetch(:crud, {})
    end
end
