require "open-uri"

class GamesController < ApplicationController
  def new
    # @letters = 10.times.map Array('A'..'Z').sample
    array_letters = Array('A'..'Z')
    @letters = 10.times.map { array_letters.sample }
  end


  def score
    # raise
    @word = params[:word]
    @letters = params[:letters]
    @included = include?(@word, @letters)
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    @word = URI.open(url).read
    @word_checked = JSON.parse(@word)
    if @word == true

  end

  private

  def include?(word, letters)
    word.chars.all? { |letter| word.count(letter) <= letters.count(letter) }
  end

end


# je veux prendre l'input donné dans la form
# le vérifier avec l'API
#https://wagon-dictionary.herokuapp.com/
#
