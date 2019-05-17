require "pry"

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}


def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |language, type|
      new_hash[language]= type
      if new_hash[language][:style] 
        new_hash[language][:style] << style
      else
        new_hash[language][:style] = [style]
      end
    end
  end
end

reformat_languages(languages)
