class Plugins::GoLink::FrontendController < CamaleonCms::Apps::PluginsFrontendController
  include Plugins::GoLink::MainHelper
  before_action :set_link, only: [:show]

  def show
    if @link
      @link.click!
      redirect_to @link.destination
    end
  end

  private

    def set_link
      @link = Plugins::GoLink::GoLink.find_by(slug: params[:slug])
    end

end
