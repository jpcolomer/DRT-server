class DotacionsController < ApplicationController
  before_filter :authenticate_user!
  # GET /dotacions
  # GET /dotacions.json
  def index
    @dotacions = Dotacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dotacions }
    end
  end

  # GET /dotacions/1
  # GET /dotacions/1.json
  def show
    @dotacion = Dotacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dotacion }
    end
  end

  # GET /dotacions/new
  # GET /dotacions/new.json
  def new
    @dotacion = Dotacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dotacion }
    end
  end

  # GET /dotacions/1/edit
  def edit
    @dotacion = Dotacion.find(params[:id])
  end

  # POST /dotacions
  # POST /dotacions.json
  def create
    @dotacion = Dotacion.new(params[:dotacion])

    respond_to do |format|
      if @dotacion.save
        format.html { redirect_to @dotacion, notice: 'Dotacion was successfully created.' }
        format.json { render json: @dotacion, status: :created, location: @dotacion }
      else
        format.html { render action: "new" }
        format.json { render json: @dotacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dotacions/1
  # PUT /dotacions/1.json
  def update
    @dotacion = Dotacion.find(params[:id])

    respond_to do |format|
      if @dotacion.update_attributes(params[:dotacion])
        format.html { redirect_to @dotacion, notice: 'Dotacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dotacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dotacions/1
  # DELETE /dotacions/1.json
  def destroy
    @dotacion = Dotacion.find(params[:id])
    @dotacion.destroy

    respond_to do |format|
      format.html { redirect_to dotacions_url }
      format.json { head :no_content }
    end
  end
end
