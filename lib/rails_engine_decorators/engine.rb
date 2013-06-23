module RailsEngineDecorators
  module Engine
    extend ActiveSupport::Concern

    included do
      initializer 'rails_engine_decorators.load' do
        # rescue: undefined method `existent' for nil:NilClass
        decorators = paths['app/decorators'].existent rescue []

        if decorators.any?
          config.to_prepare do
            Dir.glob(decorators.map{ |d| "#{ d }/**/*_decorator*.rb" }).each do |c|
              require_dependency(c)
            end
          end
        end
      end
    end
  end
end

::Rails::Engine.class_eval do
  include RailsEngineDecorators::Engine
end
