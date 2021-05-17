class FacultiesController < ApplicationController
    def index
    end

    def new
        @faculty = Faculty.new
    end

    def create
        @faculty = Faculty.new(faculty_params)
        if @faculty.save

            redirect_to root_path
        else
             render 'new'
        end
    end
    private
        def faculty_params
            params.require(:faculty).permit(:Name, :subject, :contact)
        end
end
