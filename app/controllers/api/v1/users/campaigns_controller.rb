class Api::V1::Users::CampaignsController < ApplicationController
  def index
    campaigns = User.find(params[:id]).campaigns
    render json: CampiagnSerializer.new(campaigns)
  end

  def show
    campaign = Campaign.find(params[:id])
    render json: CampaignShowSerializer.new(campaign)
  end
end
