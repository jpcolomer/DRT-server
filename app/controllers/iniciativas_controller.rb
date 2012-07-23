class IniciativasController < ApplicationController
  # GET /iniciativas
  # GET /iniciativas.json
  def index
    @iniciativas = Iniciativa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @iniciativas }
    end
  end

  # GET /iniciativas/1
  # GET /iniciativas/1.json
  def show
    @iniciativa = Iniciativa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @iniciativa }
    end
  end

  # GET /iniciativas/new
  # GET /iniciativas/new.json
  def new
    @iniciativa = Iniciativa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @iniciativa }
    end
  end

  # GET /iniciativas/1/edit
  def edit
    @iniciativa = Iniciativa.find(params[:id])
  end

  # POST /iniciativas
  # POST /iniciativas.json
  def create
    @iniciativa = Iniciativa.new(params[:iniciativa])

    respond_to do |format|
      if @iniciativa.save
        format.html { redirect_to @iniciativa, notice: 'Iniciativa was successfully created.' }
        format.json { render json: @iniciativa, status: :created, location: @iniciativa }
      else
        format.html { render action: "new" }
        format.json { render json: @iniciativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /iniciativas/1
  # PUT /iniciativas/1.json
  def update
    @iniciativa = Iniciativa.find(params[:id])

    respond_to do |format|
      if @iniciativa.update_attributes(params[:iniciativa])
        format.html { redirect_to @iniciativa, notice: 'Iniciativa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @iniciativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iniciativas/1
  # DELETE /iniciativas/1.json
  def destroy
    @iniciativa = Iniciativa.find(params[:id])
    @iniciativa.destroy

    respond_to do |format|
      format.html { redirect_to iniciativas_url }
      format.json { head :no_content }
    end
  end
end
