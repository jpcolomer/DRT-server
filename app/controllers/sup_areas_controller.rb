class SupAreasController < ApplicationController
  # GET /sup_areas
  # GET /sup_areas.json
  def index
    @sup_areas = SupArea.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sup_areas }
    end
  end

  # GET /sup_areas/1
  # GET /sup_areas/1.json
  def show
    @sup_area = SupArea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sup_area }
    end
  end

  # GET /sup_areas/new
  # GET /sup_areas/new.json
  def new
    @sup_area = SupArea.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sup_area }
    end
  end

  # GET /sup_areas/1/edit
  def edit
    @sup_area = SupArea.find(params[:id])
  end

  # POST /sup_areas
  # POST /sup_areas.json
  def create
    @sup_area = SupArea.new(params[:sup_area])

    respond_to do |format|
      if @sup_area.save
        format.html { redirect_to @sup_area, notice: 'Sup area was successfully created.' }
        format.json { render json: @sup_area, status: :created, location: @sup_area }
      else
        format.html { render action: "new" }
        format.json { render json: @sup_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sup_areas/1
  # PUT /sup_areas/1.json
  def update
    @sup_area = SupArea.find(params[:id])

    respond_to do |format|
      if @sup_area.update_attributes(params[:sup_area])
        format.html { redirect_to @sup_area, notice: 'Sup area was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sup_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sup_areas/1
  # DELETE /sup_areas/1.json
  def destroy
    @sup_area = SupArea.find(params[:id])
    @sup_area.destroy

    respond_to do |format|
      format.html { redirect_to sup_areas_url }
      format.json { head :no_content }
    end
  end
end
