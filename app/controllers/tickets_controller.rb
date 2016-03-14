class TicketsController < ApplicationController
  def new
  end

  def edit
  end

  def show
    ticketid = params[:tic_id]

    @ticket = Ticket.find(ticketid)
    
  end

  def index
     theater_id_s=params[:th_id]

     @theaters = Theatre.find(theater_id_s)

     @tickets = @theaters.tickets

     

     @ticcount=@tickets.count

     

  end
end
