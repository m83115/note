class NoteesController < ApplicationController
    before_action :find_notee, only: [:show, :edit, :update, :destroy]

    def index
        # @notees = Notee.all.sort.reverse X
        @notees = Notee.order(id: :desc)
    end

    def new
        @notee = Notee.new
    end

    def edit
        @notee = Notee.find(params[:id])
        # ORM
        # select * from notes where id =2  
    end

    def show
        # @notee = Notee.find(params[:id])
        # ORM
        # select * from notes where id =2  
    end

    def create
        #Strong Parameter 強參數
        
        @notee = Notee.new(note_params)

        if @notee.save
            redirect_to "/notees"
        else
            render :new
            # redirect_to "/notees/new"
        end
    end

    def update
    
        # @notee = Notee.find(params[:id])
        
        if @notee.update(note_params)
            redirect_to "/notees"
        else
            render :edit
            # redirect_to "/notees/new"
        end
    end    

    def destroy
        # @notee = Notee.find(params[:id])
        @notee.destroy
        redirect_to "/notees"
    end

    private
    def note_params
        params.require(:notee).permit(:title, :content)
    end

    def find_notee

        render file: "public/404.html", status: :not_found

    end
end
