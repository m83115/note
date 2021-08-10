class NoteesController < ApplicationController
    def index
        # @notees = Notee.all.sort.reverse X
        @notees = Notee.order(id: :desc)
    end

    def new
        @notee = Notee.new
    end

    def show
        @notee = Notee.find(params[:id])
        # ORM
        # select * from notes where id =2  
    end

    def create
        #Strong Parameter 強參數
        clean_notee = params.require(:notee).permit(:title, :content)
        @notee = Notee.new(clean_notee)

        if @notee.save
            redirect_to "/notees"
        else
            render :new
            # redirect_to "/notees/new"
        end

    end

end
