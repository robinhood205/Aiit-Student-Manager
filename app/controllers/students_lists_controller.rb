class StudentsListsController < ApplicationController
  # GET /students_lists
  # GET /students_lists.json
  def index
    @students_lists = StudentsList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @students_lists }
    end
  end

  # GET /students_lists/1
  # GET /students_lists/1.json
  def show
    @students_list = StudentsList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @students_list }
    end
  end

  # GET /students_lists/new
  # GET /students_lists/new.json
  def new
    @students_list = StudentsList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @students_list }
    end
  end

  # GET /students_lists/1/edit
  def edit
    @students_list = StudentsList.find(params[:id])
  end

  # POST /students_lists
  # POST /students_lists.json
  def create
    @students_list = StudentsList.new(params[:students_list])

    respond_to do |format|
      if @students_list.save
        format.html { redirect_to @students_list, notice: 'Students list was successfully created.' }
        format.json { render json: @students_list, status: :created, location: @students_list }
      else
        format.html { render action: "new" }
        format.json { render json: @students_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /students_lists/1
  # PUT /students_lists/1.json
  def update
    @students_list = StudentsList.find(params[:id])

    respond_to do |format|
      if @students_list.update_attributes(params[:students_list])
        format.html { redirect_to @students_list, notice: 'Students list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @students_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students_lists/1
  # DELETE /students_lists/1.json
  def destroy
    @students_list = StudentsList.find(params[:id])
    @students_list.destroy

    respond_to do |format|
      format.html { redirect_to students_lists_url }
      format.json { head :no_content }
    end
  end
end
