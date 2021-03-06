class LoginsController < ApplicationController
  before_action :set_login, only: [:show, :edit, :update, :destroy]

  # GET /logins
  # GET /logins.json
  #My reply to server
  def index
    @logins = Login.all
  end

  # GET /logins/1
  # GET /logins/1.json
  def show
  end

  # GET /logins/new
  def new
    @login = Login.new
  end

  # GET /logins/1/edit
  def edit
  end

  # POST /logins
  # POST /logins.json
  def create
    @login = Login.new(login_params)
   
    cusername=@login.user_name
    cphoneno=@login.phone_no
    cpassword=@login.password
   

    @signup=Signup.all

    @namerec=@signup.find_by_phone_no(cphoneno)
    crole=@namerec.role


    if @namerec!=nil
           if @namerec.user_name==cusername && @namerec.phone_no==cphoneno
          redirect_to movieslist_path(:usrrole=>crole)
     
    else
      redirect_to signups_new_path

    end 
     
     end 

   
   # respond_to do |format|
    #  if @login.save
     #   format.html { redirect_to @login, notice: 'Login was successfully created.' }
      #  format.json { render :show, status: :created, location: @login }
      #else
       # format.html { render :new }
        #format.json { render json: @login.errors, status: :unprocessable_entity }
      #end
   # end
   end

  # PATCH/PUT /logins/1
  # PATCH/PUT /logins/1.json
  def update
    respond_to do |format|
      if @login.update(login_params)
        format.html { redirect_to @login, notice: 'Login was successfully updated.' }
        format.json { render :show, status: :ok, location: @login }
      else
        format.html { render :edit }
        format.json { render json: @login.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logins/1
  # DELETE /logins/1.json
  def destroy
    @login.destroy
    respond_to do |format|
      format.html { redirect_to logins_url, notice: 'Login was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  
    # Use callbacks to share common setup or constraints between actions.
    def set_login
      raise phno.inspect
      phno = params[:phone_no]

      @login = Signup.find_by(phone_no: phno)

       if @login.role='admin'
        $status='a'
      else
        $status='u'

      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def login_params
      params.require(:login).permit(:user_name, :password, :phone_no)
    end
end
