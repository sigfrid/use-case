class SaveUser
  include UseCase

  steps :process, :validate, :persist

  def process(params)
    Success[params]
  end

  def validate(params)
    Failure[params]
  end

  def persist(params)
    Success[params]
  end
end
