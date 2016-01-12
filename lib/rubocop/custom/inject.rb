module Rubocop
  module Custom
    def self.inject!
      path = Dir.pwd.split('spec')
      Dir.glob(File.join(path[0], 'spec', 'cops', '*.rb')).each do |file|
        require file
      end
    end
  end
end
