class CasesController < ApplicationController
  before_action :set_case, only: [:show, :update, :destroy]

  # GET /cases
  def index
    @cases = Case.all
    json_response(@cases)

  end

  # POST /cases
  def create
    @case = Case.create!(case_params)
    json_response(@case, :created)
  end

  # GET /cases/:id
  def show
    # binding.pry
    @case = Case.find(params[:id])
    @comments = Comment.where(case_id: params[:id])
    json_response(@comments)
  end

  # PUT /cases/:id
  def update
    @case.update(case_params)
    head :no_content
  end

  # DELETE /cases/:id
  def destroy
    @case.destroy
    head :no_content
  end

  private

  def case_params
    # whitelist params
    params.permit(:url)
  end

  def set_case
    @case = Case.find(params[:id])
  end
end
