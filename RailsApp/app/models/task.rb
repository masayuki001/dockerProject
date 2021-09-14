class Task < ApplicationRecord
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
