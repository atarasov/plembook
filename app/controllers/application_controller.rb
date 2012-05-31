class ApplicationController < ActionController::Base
  protect_from_forgery
  def get_adv_settings
    @adv_type = AdType.all
    @category_of_ads = CategoryOfAds.all
  end
end
