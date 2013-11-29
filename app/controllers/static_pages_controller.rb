class StaticPagesController < ApplicationController
<<<<<<< HEAD

  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
  
=======
  def home
  end

>>>>>>> 6f2a9d9b68c988ed496642a8770928cffa6476e5
  def help
  end

  def about
  end
<<<<<<< HEAD

  def contact
  end
=======
  
  def contact
  end
  

>>>>>>> 6f2a9d9b68c988ed496642a8770928cffa6476e5
end
