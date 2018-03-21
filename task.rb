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

        @due_date = Date.parse(input)
    end

    def to_strings
        time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M,%S")} \n\r \n\r"
        deadline = "Крайний срок: #{@due_date}"
        return [deadline, @text, time_string]
    end
end