class PlanContingenciasController < ApplicationController
  # GET /plan_contingencias
  # GET /plan_contingencias.json
  def index
    @plan_contingencias = PlanContingencia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plan_contingencias }
    end
  end

  # GET /plan_contingencias/1
  # GET /plan_contingencias/1.json
  def show
    @plan_contingencia = PlanContingencia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plan_contingencia }
    end
  end

  # GET /plan_contingencias/new
  # GET /plan_contingencias/new.json
  def new
    @plan_contingencia = PlanContingencia.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plan_contingencia }
    end
  end

  # GET /plan_contingencias/1/edit
  def edit
    @plan_contingencia = PlanContingencia.find(params[:id])
  end

  # POST /plan_contingencias
  # POST /plan_contingencias.json
  def create
    @plan_contingencia = PlanContingencia.new(params[:plan_contingencia])

    respond_to do |format|
      if @plan_contingencia.save
        format.html { redirect_to @plan_contingencia, notice: 'Plan contingencia was successfully created.' }
        format.json { render json: @plan_contingencia, status: :created, location: @plan_contingencia }
      else
        format.html { render action: "new" }
        format.json { render json: @plan_contingencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plan_contingencias/1
  # PUT /plan_contingencias/1.json
  def update
    @plan_contingencia = PlanContingencia.find(params[:id])

    respond_to do |format|
      if @plan_contingencia.update_attributes(params[:plan_contingencia])
        format.html { redirect_to @plan_contingencia, notice: 'Plan contingencia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plan_contingencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_contingencias/1
  # DELETE /plan_contingencias/1.json
  def destroy
    @plan_contingencia = PlanContingencia.find(params[:id])
    @plan_contingencia.destroy

    respond_to do |format|
      format.html { redirect_to plan_contingencias_url }
      format.json { head :no_content }
    end
  end
end
