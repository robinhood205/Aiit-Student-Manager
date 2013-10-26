# coding: utf-8 
class StatusRecordsController < ApplicationController
  # GET /status_records
  # GET /status_records.json
  def index
    @status_records = StatusRecord.all
    @status_record = StatusRecord.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_records }
    end
  end

  # GET /status_records/1
  # GET /status_records/1.json
  def show
    @status_record = StatusRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_record }
    end
  end

  # GET /status_records/new
  # GET /status_records/new.json
  def new
    @status_record = StatusRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_record }
    end
  end

  # GET /status_records/1/edit
  def edit
    @status_record = StatusRecord.find(params[:id])
  end

  # POST /status_records
  # POST /status_records.json
  def create
    @status_record = StatusRecord.new(params[:status_record])

    respond_to do |format|
      if @status_record.save
        format.html { redirect_to @status_record, notice: 'Status record was successfully created.' }
        format.json { render json: @status_record, status: :created, location: @status_record }
      else
        format.html { render action: "new" }
        format.json { render json: @status_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_records/1
  # PUT /status_records/1.json
  def update
    @status_record = StatusRecord.find(params[:id])

    respond_to do |format|
      if @status_record.update_attributes(params[:status_record])
        format.html { redirect_to @status_record, notice: 'Status record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_records/1
  # DELETE /status_records/1.json
  def destroy
    @status_record = StatusRecord.find(params[:id])
    @status_record.destroy

    respond_to do |format|
      format.html { redirect_to status_records_url }
      format.json { head :no_content }
    end
  end
end
