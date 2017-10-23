class WordSearch::Puzzle
    attr_reader :file_name, :word_list, :grid

    def initialize(file_name)
        @file_name = file_name
    end

    def parse_file
        file = File.readlines(@file_name)
        @word_list = file.shift.strip.split(',')
    end
end