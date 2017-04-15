class CommentsController < ApplicationController
  before_action :set_case
  before_action :set_case_comment, only: [:show, :update, :destroy]

  # GET /cases/:case_id/comments
  def index
    json_response(@case.comments)
  end

  # GET /cases/:case_id/comments/:id
  def show
    json_response(@comment)
  end

  # POST /cases/:case_id/comments
  def create
    @case.comments.create!(comment_params)
    json_response(@case, :created)
  end

  # PUT /cases/:case_id/comments/:id
  def update
    @comment.update(comment_params)
    head :no_content
  end

  # DELETE /cases/:case_id/comments/:id
  def destroy
    @comment.destroy
    head :no_content
  end

  private

  def comment_params
    params.permit(:name, :done)
  end

  def set_case
    @case = Case.find(params[:case_id])
  end

  def set_case_comment
    @comment = @case.comments.find_by!(id: params[:id]) if @case
  end
end
