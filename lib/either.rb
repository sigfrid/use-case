module Either
  attr_reader :value

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def [](value)
      new(value)
    end
  end

  def initialize(value)
    @value = value
  end

  def success?
    !failure?
  end

  def failure?
    !success?
  end

  def bind(f)
    success? ? f.call(value) : self
  end

  def either(failure:, success:)
    failure? ? failure.call(value) : success.call(value)
  end
end

class Success
  include Either

  define_method :success?, -> { true }
end

class Failure
  include Either

  define_method :failure?, -> { true }
end
