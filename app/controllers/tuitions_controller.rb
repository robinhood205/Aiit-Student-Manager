# coding: utf-8 
class TuitionsController < ApplicationController
  # GET /tuitions
  # GET /tuitions.json
  def index
    @tuitions = Tuition.all
    @tuition = Tuition.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tuitions }
    end
  end

  # GET /tuitions/1
  # GET /tuitions/1.json
  def show
    @tuition = Tuition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tuition }
    end
  end

  # GET /tuitions/new
  # GET /tuitions/new.json
  def new
    @tuition = Tuition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tuition }
    end
  end

  # GET /tuitions/1/edit
  def edit
    @tuition = Tuition.find(params[:id])
  end

  # POST /tuitions
  # POST /tuitions.json
  def create
    @tuition = Tuition.new(params[:tuition])

    respond_to do |format|
      if @tuition.save
        format.html { redirect_to @tuition, notice: 'Tuition was successfully created.' }
        format.json { render json: @tuition, status: :created, location: @tuition }
      else
        format.html { render action: "new" }
        format.json { render json: @tuition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tuitions/1
  # PUT /tuitions/1.json
  def update
    @tuition = Tuition.find(params[:id])

    respond_to do |format|
      if @tuition.update_attributes(params[:tuition])
        format.html { redirect_to @tuition, notice: 'Tuition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tuition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuitions/1
  # DELETE /tuitions/1.json
  def destroy
    @tuition = Tuition.find(params[:id])
    @tuition.destroy

    respond_to do |format|
      format.html { redirect_to tuitions_url }
      format.json { head :no_content }
    end
  end
end
