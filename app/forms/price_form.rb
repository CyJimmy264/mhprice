class PriceForm < ApplicationForm
  attr_accessor :action, :volume, :for_currency

  ACTIONS = [:buy, :sell]
  CURRENCIES = [:BTC, :USD, :RUB, :ETH]

  def defaults
    self.action ||= :buy
    self.volume ||= 100_000
    self.for_currency ||= :USD
  end
end
