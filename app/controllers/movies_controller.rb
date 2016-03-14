class MoviesController < ApplicationController
  def new
    @movie=Movie.new

  end

  def edit
      movieid=params[:sid]
      @movie=Movie.find(movieid)

  end

  def update
  	   movieid=params[:sid]
  	  @movie=Movie.find(movieid)

  	  if @movie.update(user_params)
  	  	redirect_to movies_index_path

  	  else
  	  	redirect_to movies_edit_path

  	  end
  end

  def show
      movieid=params[:sid]
      @movobj=Movie.find(movieid)
  end

  def index
  	@movie=Movie.all

  end

  def create
  	@movie=Movie.new(user_params)

  	if @movie.save
  		redirect_to  movies_index_path

  	else
  		redirect_to  movies_new_path
    end
  
  end

  def destroy
      movieid=params[:sid]

     if Movie.delete(movieid)
     	redirect_to movies_index_path

     else
     	redirect_to movies_index_path

     end
  end
 
  def user_params
         params.require(:movie).permit(:name,:director)
  end

  def ftheatres
    
      movieid=params[:sid]
      @movie=Movie.find(movieid)
    
      @theatres = @movie.theatres
      @theatresids=@theatres.pluck(:id)
     
      
    
      
      redirect_to theatres_index_path(:tids => @theatresids)

  end

end
