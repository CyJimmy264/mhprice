class ApplicationForm
  include ActiveModel::Model

  def initialize *args
    super
    defaults
  end

  def defaults
  end
end
