module Rubocop
  module Custom
    def self.inject!
      root = Rubocop::Custom.project_root
      return if root.nil?
      ['spec/cops', 'cops', 'app/cops'].each do |subpath|
        Dir.glob(File.join(root, subpath, '*.rb')).each do |file|
          require file
        end
      end
    end

    def self.project_root
      cwd = Dir.pwd
      depth = 10
      while depth > 0
        if Rubocop::Custom.cwd_is_root?(cwd)
          return cwd
        else
          depth -= 1
          cwd = File.expand_path('..', cwd)
        end
      end
      nil
    end

    def self.cwd_is_root?(cwd)
      %w(Gemfile app).collect do |match|
        File.exist?(File.join(cwd, match))
      end.all?
    end
  end
end
