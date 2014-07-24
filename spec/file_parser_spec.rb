require 'spec_helper'
require_relative '../lib/file_parser'

describe FileParser do
  it 'can parse a directory to return an array of files' do
    directory = File.expand_path('spec/fixtures')

    expect(FileParser.new(directory).content).to eq ["/Users/elsaschneiders/gSchoolWork/conspire-inspired/spec/fixtures/sample.eml", "/Users/elsaschneiders/gSchoolWork/conspire-inspired/spec/fixtures/sample2.eml"]
  end
end