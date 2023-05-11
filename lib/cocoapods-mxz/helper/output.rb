# require 'colorize'

module CMxz
  class Helper
    class Output

      @@index = 0

      def self.loading(msg)
        _frames = %w[← ↖ ↑ ↗ → ↘ ↓ ↙]
        printf("\r %s %s...", _frames[@@index], msg)
        @@index = (@@index + 1) % 8
      end

      def self.load_end
        printf("\r")
      end

      def self.exception(e)
        __red(e.message)
        __blue(e.backtrace)
      end

      def self.info(msg)
        __blue(msg)
      end

      def self.error(msg)
        __red(msg)
      end

      def self.waring(msg)
        __yellow(msg)
      end

      def self.success(msg)
        __green(msg)
      end

      def self.failure(msg)
        __red(msg)
      end

      def self.verbose(msg)
        __white(msg)
      end

      def self.__white(msg)

        if msg.is_a?(Array)
          msg.each do |item|
            puts item.to_s
          end
        else
          puts msg.to_s
        end

      end

      def self.__blue(msg)

        if msg.is_a?(Array)
          msg.each do |item|
            puts item.to_s.blue
          end
        else
          puts msg.to_s.blue
        end
      rescue StandardError => exception
        if msg.is_a?(Array)
          msg.each do |item|
            puts item.to_s
          end
        else
          puts msg.to_s
        end

      end

      def self.__red(msg)

        if msg.is_a?(Array)
          msg.each do |item|
            puts item.to_s.red
          end
        else
          puts msg.to_s.red
        end
      rescue StandardError => exception
        if msg.is_a?(Array)
          msg.each do |item|
            puts item.to_s
          end
        else
          puts msg.to_s
        end

      end

      def self.__yellow(msg)

        if msg.is_a?(Array)
          msg.each do |item|
            puts item.to_s.yellow
          end
        else
          puts msg.to_s.yellow
        end
      rescue StandardError => exception
        if msg.is_a?(Array)
          msg.each do |item|
            puts item.to_s
          end
        else
          puts msg.to_s
        end

      end

      def self.__green(msg)

        if msg.is_a?(Array)
          msg.each do |item|
            puts item.to_s.green
          end
        else
          puts msg.to_s.green
        end
      rescue StandardError => exception
        if msg.is_a?(Array)
          msg.each do |item|
            puts item.to_s
          end
        else
          puts msg.to_s
        end

      end

    end
  end
end
