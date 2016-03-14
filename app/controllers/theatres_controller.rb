class TheatresController < ApplicationController
  def new
  end

  def edit
  end

  def show
  end

  def index
  	@theatid=params[:tids]
     @tcount=@theatid.count
      @tarr=Array.new
     @theatr=Theatre.new

     for i in 0..(@tcount-1)
        k=@theatid[i].to_i

     @tarr.push(Theatre.find(k))
     
     end


  end
end
