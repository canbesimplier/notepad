class Post

    def self.post_types
        [Memo, Link, Task]
    end 

    def self.create(type_index)
        return post_types[type_index].new
    end 

    def initialize
        @created_at = Time.now
        @text = nil
    end

    def read_from_console
        #todo
    end 

    def to_strings
        #todo
    end

    def save 
        file = File.new(file_path, "w:UTF-8")

        for item in to_strings do
            file.puts(item)
        end
        file.close
    end