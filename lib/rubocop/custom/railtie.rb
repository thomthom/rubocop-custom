module Rubocop
  module Custom
    def self.hook_rails!
      Dir.glob(Rails.root.join('spec', 'cops', '*.rb')).each do |file|
        require file
      end
    end
    class Railtie < Rails::Railtie
      initializer 'rubocop.custom.configure_rails_initialization' do
        Rubocop::Custom.hook_rails!
      end
    end
  end
end
