class ExamesController < ApplicationController
  # GET /exames
  # GET /exames.xml
  def index
    @exames = Exame.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @exames }
    end
  end

  # GET /exames/1
  # GET /exames/1.xml
  def show
    @exame = Exame.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @exame }
    end
  end

  # GET /exames/new
  # GET /exames/new.xml
  def new
    @exame = Exame.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @exame }
    end
  end

  # GET /exames/1/edit
  def edit
    @exame = Exame.find(params[:id])
  end

  # POST /exames
  # POST /exames.xml
  def create
    @exame = Exame.new(params[:exame])

    respond_to do |format|
      if @exame.save
        format.html { redirect_to(@exame, :notice => 'Exame was successfully created.') }
        format.xml  { render :xml => @exame, :status => :created, :location => @exame }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @exame.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /exames/1
  # PUT /exames/1.xml
  def update
    @exame = Exame.find(params[:id])

    respond_to do |format|
      if @exame.update_attributes(params[:exame])
        format.html { redirect_to(@exame, :notice => 'Exame was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @exame.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /exames/1
  # DELETE /exames/1.xml
  def destroy
    @exame = Exame.find(params[:id])
    @exame.destroy

    respond_to do |format|
      format.html { redirect_to(exames_url) }
      format.xml  { head :ok }
    end
  end
end
