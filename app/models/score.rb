class Score < ActiveRecord::Base
    belongs_to :player

    def self.highest_score
        Score.all.order(score: :desc).first
    end

    def highest_to_lowest
        Score.all.order(score: :desc)
    end

end