module ProvidersHelper
  def provider_options
    Rails.cache.fetch(["#{Provider.maximum(:updated_at)}/provider_options"]) do
      Provider.select_options
    end
  end
end
