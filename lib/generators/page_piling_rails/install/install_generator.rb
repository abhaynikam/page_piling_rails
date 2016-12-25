module PagePilingRails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def add_javascripts
        file_path = 'app/assets/javascripts/application.js'
        if File.exists?(file_path)
          append_file file_path, "//= require jquery.pagepiling.min.js\n"
        end
      end

      def add_stylesheets
        file_path = 'app/assets/stylesheets/application.css'
        if File.exists?(file_path)
          inject_into_file file_path, "*= require jquery.pagepiling.css\n", before: /\*\//, verbose: true
        end
      end

      def whats_next
        puts <<-EOF.strip_heredoc
          \n
          #################################################################\n
          We've set up the basics of page piling for you, but you'll still
          need to check:
            1. app/assets/javascripts/application.js has '//= require jquery.pagepiling.min.js', and
            2. app/assets/stylesheets/application.css has '*= require jquery.pagepiling.css'\n
          See the README.md for this gem at
          https://github.com/abhaynikam/page_piling_rails/blob/master/README.md
          for more info.
          Thanks for using page_piling_rails!\n
          #################################################################
        EOF
      end
    end
  end
end

