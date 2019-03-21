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

def get_japanese_emoticon("./lib/emoticons.yml", get_emoticon)
  # code goes here
  library = load_library("./lib/emoticons.yml")
end

def get_english_meaning
  # code goes here
end
