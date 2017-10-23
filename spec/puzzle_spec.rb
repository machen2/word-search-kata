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
end