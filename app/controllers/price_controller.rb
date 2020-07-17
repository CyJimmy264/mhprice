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
    params.permit!
    @form = PriceForm.new(params[:mhc])
  end
end
