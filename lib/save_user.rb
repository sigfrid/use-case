class SaveUser
  include UseCase

  steps :process, Validate, :persist

  def process(params)
    Success[params]
  end

  def persist(params)
    Success[params]
  end
end
