# coding: utf-8 
class GuarantorsController < ApplicationController
  # GET /guarantors
  # GET /guarantors.json
  def index
    @guarantors = Guarantor.all
    @guarantor = Guarantor.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @guarantors }
    end
  end

  # GET /guarantors/1
  # GET /guarantors/1.json
  def show
    @guarantor = Guarantor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @guarantor }
    end
  end

  # GET /guarantors/new
  # GET /guarantors/new.json
  def new
    @guarantor = Guarantor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @guarantor }
    end
  end

  # GET /guarantors/1/edit
  def edit
    @guarantor = Guarantor.find(params[:id])
  end

  # POST /guarantors
  # POST /guarantors.json
  def create
    @guarantor = Guarantor.new(params[:guarantor])

    respond_to do |format|
      if @guarantor.save
        format.html { redirect_to @guarantor, notice: 'Guarantor was successfully created.' }
        format.json { render json: @guarantor, status: :created, location: @guarantor }
      else
        format.html { render action: "new" }
        format.json { render json: @guarantor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /guarantors/1
  # PUT /guarantors/1.json
  def update
    @guarantor = Guarantor.find(params[:id])

    respond_to do |format|
      if @guarantor.update_attributes(params[:guarantor])
        format.html { redirect_to @guarantor, notice: 'Guarantor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @guarantor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guarantors/1
  # DELETE /guarantors/1.json
  def destroy
    @guarantor = Guarantor.find(params[:id])
    @guarantor.destroy

    respond_to do |format|
      format.html { redirect_to guarantors_url }
      format.json { head :no_content }
    end
  end
end
