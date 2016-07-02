class NotesController < ApplicationController
   def index
     @notes = Folder.find(params[:folder_id]).notepads
   end

   def searchbutton
    # redirect_to search_result_notepad_path(:text)
    # render text: "#{Notepad.where("text ilike ?", "%#{params[:quy]}%").inspect}"
    @search = Notepad.where("text ilike ?", "%#{params[:query]}%")
   end

   def show
     @folder = Folder.find(params[:folder_id])
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
     @note = Folder.find(params[:folder_id]).notepads.build
   end

  def destroy
    @note = Notepad.destroy(params[:id])
    redirect_to notes_path
  end

   def create
     @note = Notepad.new(note_params)
     if @note.save
       redirect_to notes_path
     else
       render :new
     end
   end
 end
