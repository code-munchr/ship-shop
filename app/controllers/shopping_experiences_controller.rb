class ShoppingExperiencesController < ApplicationController
  before_action :set_shopping_experience, only: [:show, :edit, :update, :destroy]

  # GET /shopping_experiences
  # GET /shopping_experiences.json
  def index
    @shopping_experiences = ShoppingExperience.all
  end

  # GET /shopping_experiences/1
  # GET /shopping_experiences/1.json
  def show
  end

  # GET /shopping_experiences/new
  def new
    @shopping_experience = ShoppingExperience.new
  end

  # GET /shopping_experiences/1/edit
  def edit
  end

  # POST /shopping_experiences
  # POST /shopping_experiences.json
  def create
    @shopping_experience = ShoppingExperience.new(shopping_experience_params)

    respond_to do |format|
      if @shopping_experience.save
        format.html { redirect_to @shopping_experience, notice: 'Shopping experience was successfully created.' }
        format.json { render :show, status: :created, location: @shopping_experience }
      else
        format.html { render :new }
        format.json { render json: @shopping_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopping_experiences/1
  # PATCH/PUT /shopping_experiences/1.json
  def update
    respond_to do |format|
      if @shopping_experience.update(shopping_experience_params)
        format.html { redirect_to @shopping_experience, notice: 'Shopping experience was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopping_experience }
      else
        format.html { render :edit }
        format.json { render json: @shopping_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_experiences/1
  # DELETE /shopping_experiences/1.json
  def destroy
    @shopping_experience.destroy
    respond_to do |format|
      format.html { redirect_to shopping_experiences_url, notice: 'Shopping experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_experience
      @shopping_experience = ShoppingExperience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_experience_params
      params.fetch(:shopping_experience, {})
    end
end
