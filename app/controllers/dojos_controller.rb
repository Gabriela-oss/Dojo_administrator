class DojosController < ApplicationController
  before_action :set_dojo, only: %i[ show edit update destroy ]
  before_action :authenticate_judoka!

  # GET /dojos or /dojos.json
  def index
    @dojos = Dojo.all
  end

  # GET /dojos/1 or /dojos/1.json
  def show
    respond_to do |format|
      format.js { render layout: false }
      format.html { render :show }
    end
  end

  # GET /dojos/new
  def new
    @dojo = Dojo.new
  end

  # GET /dojos/1/edit
  def edit
  end

  # POST /dojos or /dojos.json
  def create
    @dojo = Dojo.new(dojo_params)

    respond_to do |format|
      if @dojo.save
        format.html { redirect_to @dojo, notice: "Dojo was successfully created." }
        format.json { render :show, status: :created, location: @dojo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dojo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dojos/1 or /dojos/1.json
  def update
    respond_to do |format|
      if @dojo.update(dojo_params)
        format.html { redirect_to @dojo, notice: "Dojo was successfully updated." }
        format.json { render :show, status: :ok, location: @dojo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dojo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dojos/1 or /dojos/1.json
  def destroy
    @dojo.destroy
    respond_to do |format|
      format.html { redirect_to dojos_url, notice: "Dojo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dojo
      @dojo = Dojo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dojo_params
      params.require(:dojo).permit(:name, :email, :address, :active)
    end
end
