# coding: utf-8 
class ExamListsController < ApplicationController
  # GET /exam_lists
  # GET /exam_lists.json
  def index
    @exam_lists = ExamList.all
    @exam_list = ExamList.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exam_lists }
    end
  end

  # GET /exam_lists/1
  # GET /exam_lists/1.json
  def show
    @exam_list = ExamList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exam_list }
    end
  end

  # GET /exam_lists/new
  # GET /exam_lists/new.json
  def new
    @exam_list = ExamList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exam_list }
    end
  end

  # GET /exam_lists/1/edit
  def edit
    @exam_list = ExamList.find(params[:id])
  end

  # POST /exam_lists
  # POST /exam_lists.json
  def create
    @exam_list = ExamList.new(params[:exam_list])

    respond_to do |format|
      if @exam_list.save
        format.html { redirect_to @exam_list, notice: 'Exam list was successfully created.' }
        format.json { render json: @exam_list, status: :created, location: @exam_list }
      else
        format.html { render action: "new" }
        format.json { render json: @exam_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exam_lists/1
  # PUT /exam_lists/1.json
  def update
    @exam_list = ExamList.find(params[:id])

    respond_to do |format|
      if @exam_list.update_attributes(params[:exam_list])
        format.html { redirect_to @exam_list, notice: 'Exam list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exam_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exam_lists/1
  # DELETE /exam_lists/1.json
  def destroy
    @exam_list = ExamList.find(params[:id])
    @exam_list.destroy

    respond_to do |format|
      format.html { redirect_to exam_lists_url }
      format.json { head :no_content }
    end
  end
end
