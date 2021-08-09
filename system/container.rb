# frozen_string_literal: true

require 'dry/system/container'

class App
  # Container
  # App.register('utils.logger', Logger.new($stdout))
  # App['utils.logger']
  class Container < Dry::System::Container
    configure do |config|
      config.name = :app
      config.component_dirs.add 'lib'
    end
  end
end
