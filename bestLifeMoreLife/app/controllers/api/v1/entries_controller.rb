class Api::V1::EntriesController < ApplicationController

  def show

  end

  def create
    entry = Entry.create(entry_params)
    render json: entry
  end

  private

  def entry_params
    params.require(:entry).permit(:content, :public, :journal_id)

  end

end
