class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    @profiles = Profile.get_list(params)
    if @profiles.present?
      @posts_user = Post.where(user_id: @profiles.map{|pr| pr.id}[0])
    end  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:email, :name)
    end
end
