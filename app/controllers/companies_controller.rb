class CompaniesController < ApplicationController

before_action :set_company, only: [:show, :edit, :update, :destroy]
skip_before_action :authenticate_user!, only: :index


  def index
    @companies = current_user.companies
  end


  def show
  end

  def new
    @company = Company.new
  end

  def create
    @company = Com.new(company_params)
    @company.user = current_user
    @company.save!
    redirect_to company_path(@company)
  end

  def edit
  end

  def update
    @company.update(company_params)
    redirect_to company_path(@company)
  end

  def destroy
    @company.destroy
    redirect_to companies_path
  end


  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :street, :street_number, :city, :country, :email)
  end

end
