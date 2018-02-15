class Api::V1::EntriesController < ApplicationController
  def index
    blogs = Entry.all.select{|entry| entry.public === true}
    render json: blogs
  end

  def show
    entry = Entry.find(params[:id])
    render json: entry
  end


  def create
    entry = Entry.create(entry_params)
    entries = Entry.all
    render json: entries
  end

  def update
    entry = Entry.find(params[:id])
    entry.update(content: params[:content])
    entry.save
    entries = Entry.all
    render json: entries
  end

  def destroy
    entry = Entry.find(params[:id])
    entry.destroy
    entries = Entry.all
    render json: entries
  end
  private

  def entry_params
    params.require(:entry).permit(:content, :public, :journal_id)

  end

end
