# require modules here
require "yaml"
def load_library
  # code goes here
  library = YAML.load_file(file_path)
  value = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |mean, emoticons|
    value["get_meaning"][emoticons[1]] = mean
    value["get_emoticon"][emoticons[0]] = emoticons[1]
end
value
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
