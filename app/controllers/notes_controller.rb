class NotesController < ApplicationController
   def index
     @notes = Notepad.all
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
 end
