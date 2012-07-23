class AvanceIniciativasController < ApplicationController
  # GET /avance_iniciativas
  # GET /avance_iniciativas.json
  def index
    @avance_iniciativas = AvanceIniciativa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @avance_iniciativas }
    end
  end

  # GET /avance_iniciativas/1
  # GET /avance_iniciativas/1.json
  def show
    @avance_iniciativa = AvanceIniciativa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @avance_iniciativa }
    end
  end

  # GET /avance_iniciativas/new
  # GET /avance_iniciativas/new.json
  def new
    @avance_iniciativa = AvanceIniciativa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @avance_iniciativa }
    end
  end

  # GET /avance_iniciativas/1/edit
  def edit
    @avance_iniciativa = AvanceIniciativa.find(params[:id])
  end

  # POST /avance_iniciativas
  # POST /avance_iniciativas.json
  def create
    @avance_iniciativa = AvanceIniciativa.new(params[:avance_iniciativa])

    respond_to do |format|
      if @avance_iniciativa.save
        format.html { redirect_to @avance_iniciativa, notice: 'Avance iniciativa was successfully created.' }
        format.json { render json: @avance_iniciativa, status: :created, location: @avance_iniciativa }
      else
        format.html { render action: "new" }
        format.json { render json: @avance_iniciativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /avance_iniciativas/1
  # PUT /avance_iniciativas/1.json
  def update
    @avance_iniciativa = AvanceIniciativa.find(params[:id])

    respond_to do |format|
      if @avance_iniciativa.update_attributes(params[:avance_iniciativa])
        format.html { redirect_to @avance_iniciativa, notice: 'Avance iniciativa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @avance_iniciativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avance_iniciativas/1
  # DELETE /avance_iniciativas/1.json
  def destroy
    @avance_iniciativa = AvanceIniciativa.find(params[:id])
    @avance_iniciativa.destroy

    respond_to do |format|
      format.html { redirect_to avance_iniciativas_url }
      format.json { head :no_content }
    end
  end
end
