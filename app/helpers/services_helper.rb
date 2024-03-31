module ServicesHelper
  def svc_grouped_options
    Rails.cache.fetch(["#{Service.maximum(:updated_at)}/svc_grouped_options"]) do
      Service.grouped_options
    end
  end
end
