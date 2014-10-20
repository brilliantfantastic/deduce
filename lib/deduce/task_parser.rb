require 'treat'

module Deduce
  class TaskParser
    include Treat::Core::DSL

    attr_reader :client, :notes

    def parse(phrase)
      @phrase = phrase phrase
      @phrase.tokenize

      word = @phrase.words.keep_if {|w| w.category.to_sym == :preposition }.last
      @client = @phrase.words[(word.position + 1)..@phrase.words.length].map(&:to_s).join(' ') if word
      self
    end
  end
end

