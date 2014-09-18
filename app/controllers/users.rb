JobVacancy::App.controllers :users do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :new, map:"/signup"do
    @user = User.new
    render  'new'
  end
  post :create do
    user = User.find_by_email(params[:email])
    if user  && user.confirmation && user.password == params[:password]
      redirect '/'
    else
      render 'new'
    @user = User.new(params[:user])
    @name = params[:user][:name]
    @email = params[:user][:email]
    if @user.save!
      flash[:success] = "Welcome to job vacancy you are signed up"
      
      deliver(:registration, :registration_email, @name, @email)
      redirect('/')
    else
      flash[:error] = "To process your request at this juncture"
      redirect('/signup')
    end

  end

end
