class PagesController < ApplicationController
  def about
  end

  def contact
    search = params[:member]
    @members = ['Ana', 'Ruben', 'Dan', 'Esther', 'Marie', 'Rubens']

    # if search.nil?
    #   @members
    # else
    #   # Rub  -> ruben and rubens
    #   @members = @members.select do |member|
    #     member.start_with?(search)
    #   end
    # end
    if search
      @members = @members.select { |member| member.start_with?(search) }
    end
  end

end
