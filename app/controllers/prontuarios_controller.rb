class ProntuariosController < ApplicationController
  # GET /prontuarios
  # GET /prontuarios.xml
  def index
    @prontuarios = Prontuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @prontuarios }
    end
  end

  # GET /prontuarios/1
  # GET /prontuarios/1.xml
  def show
    @prontuario = Prontuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prontuario }
    end
  end

  # GET /prontuarios/new
  # GET /prontuarios/new.xml
  def new
    @prontuario = Prontuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prontuario }
    end
  end

  # GET /prontuarios/1/edit
  def edit
    @prontuario = Prontuario.find(params[:id])
  end

  # POST /prontuarios
  # POST /prontuarios.xml
  def create
    @prontuario = Prontuario.new(params[:prontuario])

    respond_to do |format|
      if @prontuario.save
        format.html { redirect_to(@prontuario, :notice => 'Prontuario was successfully created.') }
        format.xml  { render :xml => @prontuario, :status => :created, :location => @prontuario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prontuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /prontuarios/1
  # PUT /prontuarios/1.xml
  def update
    @prontuario = Prontuario.find(params[:id])

    respond_to do |format|
      if @prontuario.update_attributes(params[:prontuario])
        format.html { redirect_to(@prontuario, :notice => 'Prontuario was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prontuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /prontuarios/1
  # DELETE /prontuarios/1.xml
  def destroy
    @prontuario = Prontuario.find(params[:id])
    @prontuario.destroy

    respond_to do |format|
      format.html { redirect_to(prontuarios_url) }
      format.xml  { head :ok }
    end
  end
end
