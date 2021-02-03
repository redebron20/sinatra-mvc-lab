
class PigLatinizer

    attr_reader :text

    def initialize

    end

    def piglatinize(string)
        @text = string.split(" ")
        @text = @text.map do |word| 
            if word[0].match(/[aAeEiIoOuU]/)
                word + "way"
            else
                vowel_index = word.index(/[aAeEiIoOuU]/)
                consonants = word.slice(0..vowel_index-1)
                leftovers = word.slice(vowel_index..word.length)
                leftovers + consonants + "ay"
            end
        end
        @text = @text.join(" ")
    end


end