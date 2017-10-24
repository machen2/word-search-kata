class WordSearch::Puzzle
    attr_reader :file_name, :word_list, :grid

    def initialize(file_name)
        @file_name = file_name
        @grid = []
    end

    def parse_file
        file = File.readlines(@file_name)
        @word_list = file.shift.strip.split(',')
        file.each do |line|
            @grid << line.strip.split(',')
        end
    end
end