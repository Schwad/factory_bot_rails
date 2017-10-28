require 'factory_face'
require 'factory_face_rails/generator'
require 'rails'

module FactoryBot
  class Railtie < Rails::Railtie

    initializer "factory_face.set_fixture_replacement" do
      FactoryBotRails::Generator.new(config).run
    end

    initializer "factory_face.set_factory_paths" do
      FactoryBot.definition_file_paths = [
        Rails.root.join('factories'),
        Rails.root.join('test', 'factories'),
        Rails.root.join('spec', 'factories')
      ]
    end

    config.after_initialize do
      FactoryBot.find_definitions

      if defined?(Spring)
        Spring.after_fork { FactoryBot.reload }
      end
    end
  end
end
