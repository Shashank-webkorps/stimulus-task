class SchoolDetailsController < ApplicationController
  before_action :set_school_detail, only: %i[ show edit update destroy ]

  # GET /school_details or /school_details.json
  def index
    @school_details = SchoolDetail.all
    respond_to do |format|
      format.json { render json: @school_details }
      format.html
    end
  end

end
