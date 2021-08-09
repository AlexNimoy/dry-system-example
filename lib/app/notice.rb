# frozen_string_literal: true

class App
  # Notice
  class Notice
    include Import['logger']

    def send
      logger.warn('log send')
      'send'
    end
  end
end
