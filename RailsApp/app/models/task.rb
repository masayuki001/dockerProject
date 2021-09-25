class Task < ApplicationRecord
    validates :title, presence: true, length: { maximum: 100 }
    validates :due_date, presence: true
    validate :date_before_start



  def date_before_start
    return if due_date.blank?
    errors.add(:due_date, "には今日以降の日付を入力してください。") if due_date < Date.today
  end

    # status状態定義
    NOT_STARTED = 1
    IN_START = 2
    COMPLETED = 3

    STATUS = {
        NOT_STARTED => { label: '未着手', class: 'label-danger' },
        IN_START => { label: '着手中', class: 'label-info' },
        COMPLETED => { label: '完了', class:'' },
    }
end
