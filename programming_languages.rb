def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |language, type|
      if new_hash.keys.include?(language)
        new_hash[language][:style] << style
      else
        new_hash[language]= type
        new_hash[language][:style] = [style]
      end
    end
  end
  return new_hash
end
