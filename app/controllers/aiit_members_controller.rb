class AiitMembersController < ApplicationController
  # GET /aiit_members
  # GET /aiit_members.json
  def index
    @aiit_members = AiitMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aiit_members }
    end
  end

  # GET /aiit_members/1
  # GET /aiit_members/1.json
  def show
    @aiit_member = AiitMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aiit_member }
    end
  end

  # GET /aiit_members/new
  # GET /aiit_members/new.json
  def new
    @aiit_member = AiitMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aiit_member }
    end
  end

  # GET /aiit_members/1/edit
  def edit
    @aiit_member = AiitMember.find(params[:id])
  end

  # POST /aiit_members
  # POST /aiit_members.json
  def create
    @aiit_member = AiitMember.new(params[:aiit_member])

    respond_to do |format|
      if @aiit_member.save
        format.html { redirect_to @aiit_member, notice: 'Aiit member was successfully created.' }
        format.json { render json: @aiit_member, status: :created, location: @aiit_member }
      else
        format.html { render action: "new" }
        format.json { render json: @aiit_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aiit_members/1
  # PUT /aiit_members/1.json
  def update
    @aiit_member = AiitMember.find(params[:id])

    respond_to do |format|
      if @aiit_member.update_attributes(params[:aiit_member])
        format.html { redirect_to @aiit_member, notice: 'Aiit member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aiit_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aiit_members/1
  # DELETE /aiit_members/1.json
  def destroy
    @aiit_member = AiitMember.find(params[:id])
    @aiit_member.destroy

    respond_to do |format|
      format.html { redirect_to aiit_members_url }
      format.json { head :no_content }
    end
  end
end
