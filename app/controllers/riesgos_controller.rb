class RiesgosController < ApplicationController
  # GET /riesgos
  # GET /riesgos.json
  def index
    @riesgos = Riesgo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @riesgos }
    end
  end

  # GET /riesgos/1
  # GET /riesgos/1.json
  def show
    @riesgo = Riesgo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @riesgo }
    end
  end

  # GET /riesgos/new
  # GET /riesgos/new.json
  def new
    @riesgo = Riesgo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @riesgo }
    end
  end

  # GET /riesgos/1/edit
  def edit
    @riesgo = Riesgo.find(params[:id])
  end

  # POST /riesgos
  # POST /riesgos.json
  def create
    @riesgo = Riesgo.new(params[:riesgo])

    respond_to do |format|
      if @riesgo.save
        format.html { redirect_to @riesgo, notice: 'Riesgo was successfully created.' }
        format.json { render json: @riesgo, status: :created, location: @riesgo }
      else
        format.html { render action: "new" }
        format.json { render json: @riesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /riesgos/1
  # PUT /riesgos/1.json
  def update
    @riesgo = Riesgo.find(params[:id])

    respond_to do |format|
      if @riesgo.update_attributes(params[:riesgo])
        format.html { redirect_to @riesgo, notice: 'Riesgo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @riesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riesgos/1
  # DELETE /riesgos/1.json
  def destroy
    @riesgo = Riesgo.find(params[:id])
    @riesgo.destroy

    respond_to do |format|
      format.html { redirect_to riesgos_url }
      format.json { head :no_content }
    end
  end
end
