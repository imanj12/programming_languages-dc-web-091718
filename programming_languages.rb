# require "pry"

def reformat_languages(languages)
  
  new_hash = {}
  
  languages.each do |style, style_attrib| 
    style_attrib.each do |lang, lang_attrib|
      new_hash[lang] = lang_attrib
      if new_hash[lang].include?(:style) == true
        new_hash[lang][:style] << style
      else
        new_hash[lang][:style] = []
        new_hash[lang][:style] << style
      end
    end
  end

new_hash

end

# reformat_languages(languages)