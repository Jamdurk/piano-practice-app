class StatsController < ApplicationController
    def show
      render json: {
        total_sessions: PracticeSession.count,
        total_seconds: PracticeSession.sum(:duration_seconds),
        note_count: NoteEvent.count,
        average_duration: PracticeSession.average(:duration_seconds).to_f,
        longest_session: PracticeSession.maximum(:duration_seconds),
        shortest_session: PracticeSession.minimum(:duration_seconds),
        sessions_this_week: PracticeSession.where("started_at > ?", 1.week.ago).count,
        streak_days: streak_days
      }
    end
  
    private
  
    def streak_days
      days = PracticeSession.pluck(:started_at).map(&:to_date).uniq
      day = Date.current
      day -= 1 unless days.include?(day)
      streak = 0
      while days.include?(day)
        streak += 1
        day -= 1
      end
      streak
    end
  end