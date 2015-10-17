class WordsController < ApplicationController
  before_action do 
    @words = @text.downcase.gsub(/[^a-z0-9\s]/i, '').split
  end
  
  def avg_len
    render json: (@words.map(&:length).sum / @words.size.to_f).
      round(2)
  end

  def most_com
    words_grp = @words.
      group_by{ |word| word }
    
    max_size = words_grp.max_by{ |lst| lst.size }.size

    most_com_words = words_grp.
      keep_if{ |word, lst| lst.size == max_size }

    render json: most_com_words.keys.min
  end

  def median
    words_grp = @words.
      group_by{ |word| word }.
      sort_by{ |word, lst| lst.size }.
      to_h
    
    mid_i = words_grp.size / 2
    median_sizes = 
      if words_grp.size % 2 == 1
        [words_grp[words_grp.keys[mid_i]].size]
      else # odd length lists have two medians
        [
          words_grp[words_grp.keys[mid_i]].size, 
          words_grp[words_grp.keys[mid_i-1]].size
        ]
      end
      
    words_grp.keep_if{ |word, lst| median_sizes.include?(lst.size) }
    render json: words_grp.keys.sort
  end
end
