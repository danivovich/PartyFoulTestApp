class ThingWithErrorsController < ApplicationController
  
  class CrazyError < StandardError; end
  
  # GET /thing_with_errors
  # GET /thing_with_errors.json
  def index
    raise CrazyError, "This is a crazy error!"
    @thing_with_errors = ThingWithError.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @thing_with_errors }
    end
  end

  # GET /thing_with_errors/1
  # GET /thing_with_errors/1.json
  def show
    @thing_with_error = ThingWithError.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thing_with_error }
    end
  end

  # GET /thing_with_errors/new
  # GET /thing_with_errors/new.json
  def new
    @thing_with_error = ThingWithError.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thing_with_error }
    end
  end

  # GET /thing_with_errors/1/edit
  def edit
    @thing_with_error = ThingWithError.find(params[:id])
  end

  # POST /thing_with_errors
  # POST /thing_with_errors.json
  def create
    @thing_with_error = ThingWithError.new(params[:thing_with_error])

    respond_to do |format|
      if @thing_with_error.save
        format.html { redirect_to @thing_with_error, notice: 'Thing with error was successfully created.' }
        format.json { render json: @thing_with_error, status: :created, location: @thing_with_error }
      else
        format.html { render action: "new" }
        format.json { render json: @thing_with_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /thing_with_errors/1
  # PUT /thing_with_errors/1.json
  def update
    @thing_with_error = ThingWithError.find(params[:id])

    respond_to do |format|
      if @thing_with_error.update_attributes(params[:thing_with_error])
        format.html { redirect_to @thing_with_error, notice: 'Thing with error was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thing_with_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thing_with_errors/1
  # DELETE /thing_with_errors/1.json
  def destroy
    @thing_with_error = ThingWithError.find(params[:id])
    @thing_with_error.destroy

    respond_to do |format|
      format.html { redirect_to thing_with_errors_url }
      format.json { head :no_content }
    end
  end
end
