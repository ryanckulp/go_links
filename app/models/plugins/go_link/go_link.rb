class Plugins::GoLink::GoLink < ActiveRecord::Base
  # belongs_to :site, class_name: "CamleonCms::Site"

  def click!
    new_click_count = (self.clicks += 1)
    self.update(clicks: new_click_count)
  end
end
