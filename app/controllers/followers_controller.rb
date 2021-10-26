class FollowersController < ApplicationController

  def create
    @follower = Follower.new(follower_params)
    respond_to do |format|
      if @follower.save
        user_name = User.find(params[:follower][:user_id]).name rescue "--"
        url_search = "/profiles/index?profile?user_name=#{user_name}"
        format.html { redirect_to url_search, notice: "Começou a seguir." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @follower.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @follower = Follower.find(params[:id])

    respond_to do |format|
      if @follower.update(follower_params)
        format.html { redirect_to @follower, notice: "Deixou de seguir." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @follower.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def follower_params
    params.require(:follower).permit(:user_id, :follower_user_id)
  end

  def notification_params
    params.require(:notification).permit(:follower_id)
  end
end
