class PetInfoController < ApplicationController
  before_action :set_pet_info, only: [:show, :edit, :update, :destroy]

  # GET /pet_infos
  # GET /pet_infos.json
  def index
    @pet_info = PetInfo.all
  end

  # GET /pet_infos/1
  # GET /pet_infos/1.json
  def show
  end

  # GET /pet_infos/new
  def new
    @pet_info = PetInfo.new
  end

  # GET /pet_infos/1/edit
  def edit
  end

  # POST /pet_infos
  # POST /pet_infos.json
  def create
    @pet_info = PetInfo.new(pet_info_params)

    respond_to do |format|
      if @pet_info.save
        format.html { redirect_to @pet_info, notice: 'Pet info was successfully created.' }
        format.json { render :show, status: :created, location: @pet_info }
      else
        format.html { render :new }
        format.json { render json: @pet_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_infos/1
  # PATCH/PUT /pet_infos/1.json
  def update
    respond_to do |format|
      if @pet_info.update(pet_info_params)
        format.html { redirect_to @pet_info, notice: 'Pet info was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet_info }
      else
        format.html { render :edit }
        format.json { render json: @pet_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_infos/1
  # DELETE /pet_infos/1.json
  def destroy
    @pet_info.destroy
    respond_to do |format|
      format.html { redirect_to pet_infos_url, notice: 'Pet info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_info
      @pet_info = PetInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_info_params
      params.require(:pet_info).permit(:userId, :name, :species, :breed, :gender, :birthDate, :weight)
    end
end
