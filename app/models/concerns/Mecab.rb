module Mecab
  require 'mecab'

  def search_associate_words terms
    paragraph =  MeCab::Tagger.new
    paragraph.parse terms
  end
end