class JobKeywordsController < ApplicationController
  before_action :set_job_keyword, only: [:show, :update, :destroy]

  # GET /job_keywords
  # GET /job_keywords.json
  def index
    @job_keywords = JobKeyword.all

    render json: @job_keywords
  end

  # GET /job_keywords/1
  # GET /job_keywords/1.json
  def show
    render json: @job_keyword
  end

  # POST /job_keywords
  # POST /job_keywords.json
  def create
    @job_keyword = JobKeyword.new(job_keyword_params)

    if @job_keyword.save
      render json: @job_keyword, status: :created, location: @job_keyword
    else
      render json: @job_keyword.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_keywords/1
  # PATCH/PUT /job_keywords/1.json
  def update
    @job_keyword = JobKeyword.find(params[:id])

    if @job_keyword.update(job_keyword_params)
      head :no_content
    else
      render json: @job_keyword.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_keywords/1
  # DELETE /job_keywords/1.json
  def destroy
    @job_keyword.destroy

    head :no_content
  end

  private

    def set_job_keyword
      @job_keyword = JobKeyword.find(params[:id])
    end

    def job_keyword_params
      params.require(:job_keyword).permit(:job_id, :keyword_id)
    end
end
