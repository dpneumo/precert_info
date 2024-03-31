module OfficesHelper
  def office_options
    Rails.cache.fetch(["#{Office.maximum(:updated_at)}/office_options"]) do
      Office.select_options
    end
  end
end
