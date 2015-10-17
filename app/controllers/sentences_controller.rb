class SentencesController < ApplicationController
    SENTENCE_REGEX = /[^\.!?]+[\.!?]/

    def avg_len
        s_lengths = @text.scan(SENTENCE_REGEX).map{ |s| s.split.size }
        render json: s_lengths.sum / s_lengths.size.to_f
    end
end
