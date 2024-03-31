module InsurersHelper
  def insurer_options
    Rails.cache.fetch(["#{Insurer.maximum(:updated_at)}/insurer_options"]) do
      Insurer.select_options
    end
  end
end
