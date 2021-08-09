# frozen_string_literal: true

require 'dry/monads'

class App
  # Controller
  class Controller
    include Dry::Monads[:result]
    include Import['app.monads']

    def show
      case monads.call('params_data')
      in Success(result, message)
        message
      in Failure(:invalid_data)
        'error'
      end
    end
  end
end
