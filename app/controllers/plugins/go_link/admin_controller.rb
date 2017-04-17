class Plugins::GoLink::AdminController < CamaleonCms::Apps::PluginsAdminController
  include Plugins::GoLink::MainHelper

  def index
    @go_links = Plugins::GoLink::GoLink.all
  end

  def new
    @go_link = Plugins::GoLink::GoLink.new
  end

  def create
    @go_link = Plugins::GoLink::GoLink.new(go_link_params)

    if @go_link.save
      redirect_to url_for(action: :index), notice: 'Link Saved Successfully'
    else
      # do something else
    end
  end

  private

    def go_link_params
      params.require(:go_link).permit(:slug, :destination)
    end
end
