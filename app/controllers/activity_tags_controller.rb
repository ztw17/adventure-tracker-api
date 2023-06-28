class ActivityTagsController < ApplicationController
  before_action :set_activity_tag, only: %i[ show update destroy ]

  # GET /activity_tags
  def index
    @activity_tags = ActivityTag.all

    render json: @activity_tags
  end

  # GET /activity_tags/1
  def show
    render json: @activity_tag
  end

  # POST /activity_tags
  def create
    @activity_tag = ActivityTag.new(activity_tag_params)

    if @activity_tag.save
      render json: @activity_tag, status: :created, location: @activity_tag
    else
      render json: @activity_tag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /activity_tags/1
  def update
    if @activity_tag.update(activity_tag_params)
      render json: @activity_tag
    else
      render json: @activity_tag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /activity_tags/1
  def destroy
    @activity_tag.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_tag
      @activity_tag = ActivityTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activity_tag_params
      params.require(:activity_tag).permit(:tag_id, :activity_id)
    end
end
