module Mecab
  require 'mecab'

  def search_associate_words terms
    paragraph =  MeCab::Tagger.new
    puts paragraph.parse terms
  end
end