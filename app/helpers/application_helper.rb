module ApplicationHelper
    def date_formatting(date, from)
        if from == 'movie'
            date.strftime('%d/%m/%y') if date
        elsif from == 'home'
            date.strftime('%d/%m/%y') if date
            # date.strftime(Date.today - date.to_date)
        else
            date.strftime('%d/%m/%y %H:%M') if date
        end
    end
end
