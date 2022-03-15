# frozen_string_literal: true

require 'json'

# data = File.read('books.json')
parsed = JSON.load_file('json.json', symbolize_names: true)
parsed[0][:books] << "Buy Jupiter"
File.write('json.json', JSON.pretty_generate(parsed))
