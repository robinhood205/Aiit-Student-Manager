class StudentListsController < ApplicationController
  # GET /student_lists
  # GET /student_lists.json
  def index
    @student_lists = StudentList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_lists }
    end
  end

  # GET /student_lists/1
  # GET /student_lists/1.json
  def show
    @student_list = StudentList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_list }
    end
  end

  # GET /student_lists/new
  # GET /student_lists/new.json
  def new
    @student_list = StudentList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_list }
    end
  end

  # GET /student_lists/1/edit
  def edit
    @student_list = StudentList.find(params[:id])
  end

  # POST /student_lists
  # POST /student_lists.json
  def create
    @student_list = StudentList.new(params[:student_list])

    respond_to do |format|
      if @student_list.save
        format.html { redirect_to @student_list, notice: 'Student list was successfully created.' }
        format.json { render json: @student_list, status: :created, location: @student_list }
      else
        format.html { render action: "new" }
        format.json { render json: @student_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_lists/1
  # PUT /student_lists/1.json
  def update
    @student_list = StudentList.find(params[:id])

    respond_to do |format|
      if @student_list.update_attributes(params[:student_list])
        format.html { redirect_to @student_list, notice: 'Student list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_lists/1
  # DELETE /student_lists/1.json
  def destroy
    @student_list = StudentList.find(params[:id])
    @student_list.destroy

    respond_to do |format|
      format.html { redirect_to student_lists_url }
      format.json { head :no_content }
    end
  end
end
