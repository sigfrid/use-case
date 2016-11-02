class SaveUser
  include UseCase

  steps :process, :validate, :persist

  def process(params)
    Success[params]
  end

  def validate(params)
    Failure['not valid']
  end

  def persist(params)
    Success[params]
  end
end
