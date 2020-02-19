class TvChannelsController < ApplicationController
  before_action :set_tv_channel, only: [:show, :edit, :update, :destroy]

  # GET /tv_channels
  def index
    @tv_shows = TvShow.includes(:tv_channel).order(created_at: :asc)
  end

  def favroite
    respond_to do |format|
      tv_show = TvShow.find_by(id: params[:show_id])
      format.js { render :js => "window.location.href = '/tv_channels'" } if tv_show.blank?
      #Set current user id.
      #for now I am mapping default user

      @current_user = User.first
      favorite = Favorite.new(user: @current_user, tv_show_id: tv_show.id)

      if favorite.save
        format.js { render :js => "window.location.href = '/tv_channels'" }

      else
        format.js { render :js => "window.location.href = '/tv_channels'" }
      end
    end
  end

  def search
    if params[:name].present?
      tv_channels = TvChannel.where('name LIKE ?', "%#{params[:name].capitalize}%")
      @tv_shows = TvShow.where(tv_channel_id: tv_channels.pluck(:id))
      @tv_shows = TvShow.where('name LIKE ?', "%#{params[:name].capitalize}%") if @tv_shows.blank?
    else
      @tv_shows = TvShow.includes(:tv_channel).order(created_at: :asc)
    end

    if request.xhr?
      render :json => {
        html: render_to_string(partial: 'tv_channels/form')
      }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tv_channel
      @tv_channel = TvChannel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tv_channel_params
      params.fetch(:tv_channel, {})
    end
end
