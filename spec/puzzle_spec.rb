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

    describe "#grid" do 
        it "a puzzle has a grid attribute" do
            expect(word_search).to respond_to('grid')
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

        it "parses the grid portion of the file into the grid attribute" do
            word_search.parse_file 
            expect(word_search.grid).to eq([["U","M","K","H","U","L","K","I","N","V","J","O","C","W","E"], ["L","L","S","H","K","Z","Z","W","Z","C","G","J","U","Y","G"], ["H","S","U","P","J","P","R","J","D","H","S","B","X","T","G"], ["B","R","J","S","O","E","Q","E","T","I","K","K","G","L","E"], ["A","Y","O","A","G","C","I","R","D","Q","H","R","T","C","D"], ["S","C","O","T","T","Y","K","Z","R","E","P","P","X","P","F"], ["B","L","Q","S","L","N","E","E","E","V","U","L","F","M","Z"], ["O","K","R","I","K","A","M","M","R","M","F","B","A","P","P"], ["N","U","I","I","Y","H","Q","M","E","M","Q","R","Y","F","S"], ["E","Y","Z","Y","G","K","Q","J","P","C","Q","W","Y","A","K"], ["S","J","F","Z","M","Q","I","B","D","B","E","M","K","W","D"], ["T","G","L","B","H","C","B","E","C","H","T","O","Y","I","K"], ["O","J","Y","E","U","L","N","C","C","L","Y","B","Z","U","H"], ["W","Z","M","I","S","U","K","U","R","B","I","D","U","X","S"], ["K","Y","L","B","Q","Q","P","M","D","F","C","K","E","A","B"]])
        end
    end
end