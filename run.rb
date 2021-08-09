# frozen_string_literal: true

require_relative 'system/container'
require_relative 'system/import'

App::Container.finalize!

p App::Container['app.notice'].send
# p App::Container['app.monads'].call('name')
# p App::Container['app.monads'].call(nil)
p App::Container['app.controller'].show
