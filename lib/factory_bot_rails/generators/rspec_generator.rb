module FactoryBotRails
  module Generators
    class RSpecGenerator
      def initialize(generators)
        @generators = generators
      end

      def run
        @generators.fixture_replacement fixture_replacement_setting, dir: factory_face_directory
      end

      private

      def fixture_replacement_setting
        @generators.options[:rails][:fixture_replacement] || :factory_face
      end

      def factory_face_directory
        @generators.options.fetch(:factory_face, {}).fetch(:dir, 'spec/factories')
      end
    end
  end
end
