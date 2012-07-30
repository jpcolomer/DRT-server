class ContratosController < ApplicationController
  before_filter :authenticate_user!
  # GET /contratos
  # GET /contratos.json
  before_filter :get_area_or_empresa

  def get_area_or_empresa
    if params[:area_id]
      @area_o_empresa =  Area.find(params[:area_id])
    elsif params[:empresa_id]
      @area_o_empresa = Empresa.find(params[:empresa_id])
    end
  end

  def index
    if @area_o_empresa
      @contratos = @area_o_empresa.contratos
    else
      @contratos = Contrato.all
    end 

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contratos }
    end
  end

  # GET /contratos/1
  # GET /contratos/1.json
  def show
    if @area_o_empresa
      @contrato = @area_o_empresa.contratos.find(params[:id])
    else
      @contrato = Contrato.find(params[:id])
   end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contrato }
    end
  end

  # GET /contratos/new
  # GET /contratos/new.json
  def new
    @contrato = Contrato.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contrato }
    end
  end

  # GET /contratos/1/edit
  def edit
    @contrato = Contrato.find(params[:id])
  end

  # POST /contratos
  # POST /contratos.json
  def create
    if @area_o_empresa
      @contrato = @area_o_empresa.contratos.new(params[:contrato])
    else
      @contrato = Contrato.new(params[:contrato])
    end

    respond_to do |format|
      if @contrato.save
        format.html { redirect_to @contrato, notice: 'Contrato was successfully created.' }
        format.json { render json: @contrato, status: :created, location: @contrato }
      else
        format.html { render action: "new" }
        format.json { render json: @contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contratos/1
  # PUT /contratos/1.json
  def update
    @contrato = Contrato.find(params[:id])

    respond_to do |format|
      if @contrato.update_attributes(params[:contrato])
        format.html { redirect_to @contrato, notice: 'Contrato was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contratos/1
  # DELETE /contratos/1.json
  def destroy
    @contrato = Contrato.find(params[:id])
    @contrato.destroy

    respond_to do |format|
      format.html { redirect_to contratos_url }
      format.json { head :no_content }
    end
  end
end
