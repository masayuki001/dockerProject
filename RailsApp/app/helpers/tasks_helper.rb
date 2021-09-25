module TasksHelper
    def status_class(status)
        Task::STATUS[status][:class]
    end

    def status_label(status)
        Task::STATUS[status][:label]
    end

    def status_label_only()
        label_hash = Hash.new
        Task::STATUS.each do |k, v|
            label_hash.merge!(v[:label] => k)
        end

        label_hash
    end

end
