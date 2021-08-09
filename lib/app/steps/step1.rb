# frozen_string_literal: true

class App
  class Steps
    # Step1
    class Step1
      include Dry::Monads[:result]

      def call(params)
        params ? Success('success') : Failure(:invalid_data)
      end
    end
  end
end
