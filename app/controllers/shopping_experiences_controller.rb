class ShoppingExperiencesController < ApplicationController
  before_action :set_shopping_experience, only: [:show, :edit, :update, :destroy]

  def display_cart
 
    @cart = session[:current_cart].except("shex_id")
    render 'displayCart'
    
  end

  def delete_from_my_cart
    binding.pry

    session[:current_cart].delete(params[:item_id])
    #  session[:current_cart][parmas[:item_id]].delete
    redirect_to display_cart_url
  end

  def add_to_cart
    
   
    if !session[:current_cart] 
      session[:current_cart] =  {:shex_id => session[:current_cart_id] } 
    end
    
    
   

       #checks if session hash's current cart key doesn't have params[:item_id] key, value pair 
       if  !session[:current_cart].key?(params[:item_id]) 
        # set {units: 1}  as params[item_id] key's  value 
        
        session[:current_cart][params[:item_id]] = {}
        session[:current_cart][params[:item_id]][:quantity] = 1
       
         
        
   else
     
       #else  increment  value  of  quantity
       
       session[:current_cart][params[:item_id]]["quantity"] = session[:current_cart][params[:item_id]]["quantity"] + 1
       #ShexItem.create(item_id: params[:item_id], shopping_experience_id: session[:current_cart_id] ) 
    end

    
      
end
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
