module DiagnosesHelper
  def dx_grouped_options
    Rails.cache.fetch(["#{Diagnosis.maximum(:updated_at)}/dx_grouped_options"]) do
      Diagnosis.grouped_options
    end
  end
end
