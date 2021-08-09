class NoteesController < ApplicationController
    def index

    end

    def new
        @notee = Notee.new()
    end

    def create
        title = params[:title]
        content = params[:content]
        notee = Notee.new(title: title, content: content)

        if notee.save
            redirect_to "/notee"
        else
        
        end

    end

end
