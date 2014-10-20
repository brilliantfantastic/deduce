require 'minitest/autorun'
require_relative '../lib/deduce/task_parser'

describe Deduce::TaskParser do
  subject { Deduce::TaskParser.new }

  it "translates 'worked on parser for Chronic'" do
    parser = subject.parse 'worked on parser for Chronic'
    parser.client.must_equal 'Chronic'
  end

  it "translates 'worked on something else for Chronic'" do
    parser = subject.parse 'worked on parser for Twelve Week Year'
    parser.client.must_equal 'Twelve Week Year'
  end
end
