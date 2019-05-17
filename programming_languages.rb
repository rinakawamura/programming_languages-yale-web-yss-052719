require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    binding.pry
    language.each do |language, type|
      binding.pry
      new_hash[language]= language
end
