# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def get_sigma_icon_path(name = "", size = "64")
    
    unless name.blank?
      return  path_to_image("SIGMA/medical/png/#{size}/#{name}.png")
    end
  end
end
