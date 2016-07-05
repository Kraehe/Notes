class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]
   def index
     @notes = current_user.folders.find(params[:folder_id]).notepads
   end

   def searchbutton
    # redirect_to search_result_notepad_path(:text)
    # render text: "#{Notepad.where("text ilike ?", "%#{params[:quy]}%").inspect}"
    @folder = current_user.folders.find(params[:folder_id])
    @search = @folder.notepads.where("text ilike ?", "%#{params[:query]}%")
   end

   def show
   end

   def edit

   end

   def note_params
     params.require(:notepad).permit!
   end

   def update
     if  @note.update(note_params)
       redirect_to folder_note_path
     else
       render :edit
     end
   end

   def new
     @folder = current_user.folders.find(params[:folder_id])
     @note = @folder.notepads.new
   end

  def destroy
    @note.destroy
    redirect_to folder_notes_path
  end

   def create
     @folder = current_user.folders.find(params[:folder_id])
     @note = @folder.notepads.new(note_params)
     if @note.save
       redirect_to folder_note_path(params[:folder_id], @note)
     else
       render :new
     end
   end
   private
     # Use callbacks to share common setup or constraints between actions.
     def set_note
       @folder = current_user.folders.find(params[:folder_id])
       @note = @folder.notepads.find(params[:id])
     end
 end
