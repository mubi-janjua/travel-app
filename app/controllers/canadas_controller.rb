class CanadasController < ApplicationController
   before_action :authenticate_user!, only:[:main]
  def index

  end

  def display
     @canada = Canada.find(params[:canada_id])

    respond_to do |format|
      format.html
      format.pdf do
       render pdf: "file_name"   # Excluding ".pdf" extension.
      end
    end
  end
  def search
    if params[:search]
      @canada = Canada.search(params[:search]).order("application_no")
    else
      @canada = Canada.all.("application_no")
    end
  end
  def main

  @canadas = Canada.search(params[:search])
  end

  def immigrant

  end

  def study

  end

  def work

  end

  def show
    @canada = Canada.find(params[:id])
  end

  def new
    @canada = Canada.new
  end

  def edit
    @canada = Canada.find(params[:id])
  end

  def create
    @canada = Canada.new(canada_params)

   if @canada.save
       redirect_to @canada

    else
      render 'new'
    end
  end

  def update
    @canada = Canada.find(params[:id])

    if @canada.update(canada_params)
       redirect_to @canada
    else
      render 'edit'
    end
  end

  def destroy
    @canada = Canada.find(params[:id])
    @canada.destroy

    redirect_to canada_main_path(:can)
  end

  private
  def canada_params
    params.require(:canada).permit(:application_no, :first_name, :surname, :last_name, :nationality, :passport_no, :passport_expiry, :visa_category, :date_time, :application_status, :marital_status,:sponsor)
  end
end
