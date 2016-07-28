require 'rails/engine/configuration'

Rails::Engine::Configuration.class_eval do
  alias paths_without_decorators paths
  def paths
    @paths ||= begin
      paths = paths_without_decorators
      paths.add "app/decorators", :eager_load => true
      paths
    end
  end
end
