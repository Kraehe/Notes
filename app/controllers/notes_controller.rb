class NotesController < ApplicationController
   def index
     @notes = Notepad.all
   end

   def searchbutton
    # redirect_to search_result_notepad_path(:text)
    # render text: "#{Notepad.where("text ilike ?", "%#{params[:quy]}%").inspect}"
    @search = Notepad.where("text ilike ?", "%#{params[:quy]}%")
   end

   def show
     @note = Notepad.find(params[:id])
   end

   def edit
     @note = Notepad.find(params[:id])
   end

   def note_params
     params.required(:notepad).permit!
   end

   def update
     @note = Notepad.find(params[:id])
     @note.update(note_params)
     redirect_to notepad_path
   end

   def new
     @note = Notepad.new
   end

   def create
     @note = Notepad.create(note_params)
     redirect_to notes_path
   end
 end
