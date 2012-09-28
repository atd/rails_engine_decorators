require 'rails/engine/configuration'

Rails::Engine::Configuration.class_eval do
  def paths_with_decorators
    @paths ||= begin
      paths = paths_without_decorators
      paths.add "app/decorators", :eager_load => true
      paths
    end
  end

  alias_method_chain :paths, :decorators
end
