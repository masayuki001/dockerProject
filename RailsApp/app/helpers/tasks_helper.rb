module TasksHelper
    def status_class(status)
        Task::STATUS[status][:class]
    end

    def status_label(status)
        Task::STATUS[status][:label]
    end
end
