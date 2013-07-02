class MibunsController < ApplicationController
  # GET /mibuns
  # GET /mibuns.json
  def index
    @mibuns = Mibun.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mibuns }
    end
  end

  # GET /mibuns/1
  # GET /mibuns/1.json
  def show
    @mibun = Mibun.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mibun }
    end
  end

  # GET /mibuns/new
  # GET /mibuns/new.json
  def new
    @mibun = Mibun.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mibun }
    end
  end

  # GET /mibuns/1/edit
  def edit
    @mibun = Mibun.find(params[:id])
  end

  # POST /mibuns
  # POST /mibuns.json
  def create
    @mibun = Mibun.new(params[:mibun])

    respond_to do |format|
      if @mibun.save
        format.html { redirect_to @mibun, notice: 'Mibun was successfully created.' }
        format.json { render json: @mibun, status: :created, location: @mibun }
      else
        format.html { render action: "new" }
        format.json { render json: @mibun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mibuns/1
  # PUT /mibuns/1.json
  def update
    @mibun = Mibun.find(params[:id])

    respond_to do |format|
      if @mibun.update_attributes(params[:mibun])
        format.html { redirect_to @mibun, notice: 'Mibun was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mibun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mibuns/1
  # DELETE /mibuns/1.json
  def destroy
    @mibun = Mibun.find(params[:id])
    @mibun.destroy

    respond_to do |format|
      format.html { redirect_to mibuns_url }
      format.json { head :no_content }
    end
  end
end
