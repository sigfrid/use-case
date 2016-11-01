module UseCase
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def call(*params)
      self.new.call(*params)
    end
  end

  def call
    "called"
  end
end
