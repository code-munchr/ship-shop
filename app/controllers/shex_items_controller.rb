class ShexItemsController < ApplicationController
  before_action :set_shex_item, only: [:show, :edit, :update, :destroy]

  # GET /shex_items
  # GET /shex_items.json
  def index
    @shex_items = ShexItem.all
  end






  # GET /shex_items/1
  # GET /shex_items/1.json
  def show
  end

  # GET /shex_items/new
  def new
    @shex_item = ShexItem.new
  end

  # GET /shex_items/1/edit
  def edit
  end

  # POST /shex_items
  # POST /shex_items.json
  def create
    @shex_item = ShexItem.new(shex_item_params)

    respond_to do |format|
      if @shex_item.save
        format.html { redirect_to @shex_item, notice: 'Shex item was successfully created.' }
        format.json { render :show, status: :created, location: @shex_item }
      else
        format.html { render :new }
        format.json { render json: @shex_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shex_items/1
  # PATCH/PUT /shex_items/1.json
  def update
    respond_to do |format|
      if @shex_item.update(shex_item_params)
        format.html { redirect_to @shex_item, notice: 'Shex item was successfully updated.' }
        format.json { render :show, status: :ok, location: @shex_item }
      else
        format.html { render :edit }
        format.json { render json: @shex_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shex_items/1
  # DELETE /shex_items/1.json
  def destroy
    @shex_item.destroy
    respond_to do |format|
      format.html { redirect_to shex_items_url, notice: 'Shex item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shex_item
      @shex_item = ShexItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shex_item_params
      params.require(:shex_item).permit(:item_id, :shopping_experience_id)
    end
end
