require 'test_helper'

class RailsEngineDecoratorsTest < ActiveSupport::TestCase
  CLASSES = %w{ Post Foo::Bar PostsController Foo::BarController }

  test "truth" do
    assert_kind_of Module, RailsEngineDecorators
  end

  test "classes should be decorated" do
    CLASSES.each do |klass|
      assert klass.constantize.new.decorated?
    end
  end
end
