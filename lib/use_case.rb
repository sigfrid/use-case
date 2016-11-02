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
    steps = self.class.steps_chain.clone
    current_outcome = Success[params]

    while !steps.empty? do
      next_step = steps.shift
      current_outcome = current_outcome.bind(->(current_step_outcome) { self.send(next_step, current_step_outcome) })
    end

    current_outcome
  end
end
