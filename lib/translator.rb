# require modules here
require "pry"
require "yaml"

def load_library(file_path)
  # code goes here
  library = YAML.load_file(file_path)
  value = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |mean, emoticons|
    value["get_meaning"][emoticons[1]] = mean
    value["get_emoticon"][emoticons[0]] = emoticons[1]
end
value
end

def get_japanese_emoticon(file_path = "./lib/emoticons.yml", english_emoticon)
  # code goes here
  library = load_library(file_path)
  if library["get_emoticon"].include?(english_emoticon)
    library["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
end
end

def get_english_meaning(file_path = "./lib/emoticons.yml", japanese_emoticon)
  # code goes here
  library = load_library(file_path)
  if library["get_meaning"].include?(japanese_emoticon)
    library["get_meaning"][japanese_emoticon]
  else
    "Sorry, that emoticon was not found"
end
