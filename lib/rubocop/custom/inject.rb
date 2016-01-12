module Rubocop
  module Custom
    def self.inject!
      Dir.glob(File.join(Dir.pwd, 'spec', 'cops', '*.rb')).each do |file|
        require file
      end
    end
  end
end
