class AlertasController < ApplicationController
  # GET /alertas
  # GET /alertas.xml
  def index
    @alertas = Alerta.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alertas }
    end
  end

  # GET /alertas/1
  # GET /alertas/1.xml
  def show
    @alerta = Alerta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alerta }
    end
  end

  # GET /alertas/new
  # GET /alertas/new.xml
  def new
    @alerta = Alerta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alerta }
    end
  end

  # GET /alertas/1/edit
  def edit
    @alerta = Alerta.find(params[:id])
  end

  # POST /alertas
  # POST /alertas.xml
  def create
    @alerta = Alerta.new(params[:alerta])

    respond_to do |format|
      if @alerta.save
        format.html { redirect_to(@alerta, :notice => 'Alerta was successfully created.') }
        format.xml  { render :xml => @alerta, :status => :created, :location => @alerta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alerta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alertas/1
  # PUT /alertas/1.xml
  def update
    @alerta = Alerta.find(params[:id])

    respond_to do |format|
      if @alerta.update_attributes(params[:alerta])
        format.html { redirect_to(@alerta, :notice => 'Alerta was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alerta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alertas/1
  # DELETE /alertas/1.xml
  def destroy
    @alerta = Alerta.find(params[:id])
    @alerta.destroy

    respond_to do |format|
      format.html { redirect_to(alertas_url) }
      format.xml  { head :ok }
    end
  end
end
