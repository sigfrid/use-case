class SaveUser
  include UseCase

  steps :validate, :persist

  def validate
    p "validated"
  end

  def persist
    p "persisted"
  end
end
