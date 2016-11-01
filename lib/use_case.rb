module UseCase
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def call(params)
      self.new.call(params)
    end

    def steps(*args)
      @steps_chain = Array(args)
    end

    def steps_chain
      @steps_chain
    end
  end

  def call(params)
    self.class.steps_chain.each { |next_step| self.send(next_step) }
  end
end
