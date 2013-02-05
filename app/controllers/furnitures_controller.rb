class FurnituresController < ApplicationController
  # GET /furnitures
  # GET /furnitures.json
  def index
    @furnitures = Furniture.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @furnitures }
    end
  end

  # GET /furnitures/1
  # GET /furnitures/1.json
  def show
    @furniture = Furniture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @furniture }
    end
  end

  # GET /furnitures/new
  # GET /furnitures/new.json
  def new
    @furniture = Furniture.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @furniture }
    end
  end

  # GET /furnitures/1/edit
  def edit
    @furniture = Furniture.find(params[:id])
  end

  # POST /furnitures
  # POST /furnitures.json
  def create
    @furniture = Furniture.new(params[:furniture])

    respond_to do |format|
      if @furniture.save
        format.html { redirect_to @furniture, notice: 'Furniture was successfully created.' }
        format.json { render json: @furniture, status: :created, location: @furniture }
      else
        format.html { render action: "new" }
        format.json { render json: @furniture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /furnitures/1
  # PUT /furnitures/1.json
  def update
    @furniture = Furniture.find(params[:id])

    respond_to do |format|
      if @furniture.update_attributes(params[:furniture])
        format.html { redirect_to @furniture, notice: 'Furniture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @furniture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /furnitures/1
  # DELETE /furnitures/1.json
  def destroy
    @furniture = Furniture.find(params[:id])
    @furniture.destroy

    respond_to do |format|
      format.html { redirect_to furnitures_url }
      format.json { head :no_content }
    end
  end
end
