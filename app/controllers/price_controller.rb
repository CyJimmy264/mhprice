class PriceController < ApplicationController
  before_action :set_form

  def index
    @mhc = PriceForm.new(
      action: @form.action,
      volume: @form.volume,
      for_currency: @form.for_currency,
    )
  end

  private

  def set_form
    permitted = params.permit(mhc: [:action, :volume, :for_currency])
    @form = PriceForm.new(permitted[:mhc])
  end
end
