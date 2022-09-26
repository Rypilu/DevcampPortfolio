module DefaultPageContentConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "DevcampPortfolio | Ryan Piluski"
    @seo_keywords = "Ryan Piluski portfolio"
  end
end