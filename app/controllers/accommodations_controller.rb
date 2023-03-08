# frozen_string_literal: true

class AccommodationsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]
  before_action :find_user, only: :create

  def index
    @page = params[:page] || 1
    @accommodations = Accommodation.paginate(@page)
  end

  def show
    @accommodation = Accommodation.find_by(id: params[:id])
  end

  def new
    @accommodation = Accommodation.new
  end

  def edit
  end

  def create
    @accommodation = @user.accommodations.create!(accommodation_params)
  end

  def update
  end

  def destroy
  end

  private

  def accommodation_params
    params.require(:accommodation).permit(:name, :user_id)
  end

  def find_user
    @user = current_user
  end
end
