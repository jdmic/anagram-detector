# Your code goes here!
require "pry"
class Anagram

    attr_accessor :anagram

    def initialize(anagram)
        @anagram = anagram
    end

    def match(words)
        answer = []

        split_sorted_anagram = @anagram.split("").sort
        
         words.each do |string|
            split_sorted_string = string.split("").sort
    
            if split_sorted_string == split_sorted_anagram
                answer << string
            end
        end
        answer     
    end
end