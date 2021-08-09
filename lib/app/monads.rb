# frozen_string_literal: true

class App
  # Monads
  class Monads
    include Dry::Monads[:result, :do]
    include Import['app.steps.step1']

    def call(params)
      result = yield step1.call(params)
      Success([result, params])
    end
  end
end
