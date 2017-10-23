require "spec_helper"

RSpec.describe WordSearch::Puzzle do 
    let(:word_search) { WordSearch::Puzzle.new("test_puzzle.txt") }
    
    it "is defined as a class" do 
        expect(WordSearch::Puzzle).to be_a(Class)
    end

    describe "#new" do 
        it "initializes a new instance of Puzzle" do 
            expect{WordSearch::Puzzle.new("test_puzzle.txt")}.to_not raise_error
        end

        it "initializes a puzzle instance with a given file name" do 
            expect(word_search.file_name).to eq("test_puzzle.txt")
        end
    end

    describe "#file_name" do 
        it "has a file name" do 
            expect(word_search).to respond_to('file_name')
        end
    end

    describe "#word_list" do 
        it "a puzzle has a word_list attribute" do 
            expect(word_search).to respond_to('word_list')
        end
    end

    describe "#parse_file" do 
        it "can be called with no arguments" do 
            expect(word_search).to respond_to(:parse_file)
        end

        it "parses the first line of the file name into an array of words and sets it to word_list" do
            word_search.parse_file
            expect(word_search.word_list).to eq(["BONES", "KHAN", "KIRK", "SCOTTY", "SPOCK", "SULU", "UHURA"])
        end
    end
end