require "date"

class Task < Post
    def initialize
        super

        @due_date = Time.now
    end

    def read_from_console
        puts "Что надо сделать?"
        @text = STDIN.gets.strip

        puts "К какому числу её нужно сделать? Введите в формате ДД.ММ.ГГГГ"
        input = STDIN.gets.strip
    end

    def to_strings

    end
end