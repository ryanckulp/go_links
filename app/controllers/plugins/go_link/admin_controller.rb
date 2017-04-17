class Plugins::GoLink::AdminController < CamaleonCms::Apps::PluginsAdminController
  include Plugins::GoLink::MainHelper

  def new
    @go_link = Plugins::GoLink::GoLink.new
  end

  def create
    @go_link = Plugins::GoLink::GoLink.new(go_link_params)

    if @go_link.save
      redirect_to url_for(action: :settings), notice: 'Link Saved Successfully'
    else
      # do something else
    end
  end

  # show settings form
  def settings
    @go_links = Plugins::GoLink::GoLink.all
  end

  # save values from settings form
  def save_settings
    @plugin.set_options(params[:options]) if params[:options].present? # save option values
    @plugin.set_metas(params[:metas]) if params[:metas].present? # save meta values
    @plugin.set_field_values(params[:field_options]) if params[:field_options].present? # save custom field values
    redirect_to url_for(action: :settings), notice: 'Settings Saved Successfully'
  end
  # add custom methods below ....

  private

    def go_link_params
      params.require(:go_link).permit(:slug, :destination)
    end
end
