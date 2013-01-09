class DiddiesController < ApplicationController
  # GET /diddies
  # GET /diddies.json
  def index
    @diddies = Diddy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diddies }
    end
  end

  # GET /diddies/1
  # GET /diddies/1.json
  def show
    @diddy = Diddy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diddy }
    end
  end

  # GET /diddies/new
  # GET /diddies/new.json
  def new
    @diddy = Diddy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diddy }
    end
  end

  # GET /diddies/1/edit
  def edit
    @diddy = Diddy.find(params[:id])
  end

  # POST /diddies
  # POST /diddies.json
  def create
    @diddy = Diddy.new(params[:diddy])

    respond_to do |format|
      if @diddy.save
        format.html { redirect_to @diddy, notice: 'Diddy was successfully created.' }
        format.json { render json: @diddy, status: :created, location: @diddy }
      else
        format.html { render action: "new" }
        format.json { render json: @diddy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diddies/1
  # PUT /diddies/1.json
  def update
    @diddy = Diddy.find(params[:id])

    respond_to do |format|
      if @diddy.update_attributes(params[:diddy])
        format.html { redirect_to @diddy, notice: 'Diddy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @diddy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diddies/1
  # DELETE /diddies/1.json
  def destroy
    @diddy = Diddy.find(params[:id])
    @diddy.destroy

    respond_to do |format|
      format.html { redirect_to diddies_url }
      format.json { head :no_content }
    end
  end
end
