# frozen_string_literal: true

App::Container.boot(:logger) do
  init do
    require 'logger'
  end

  start do
    register(:logger, Logger.new($stdout))
  end
end
