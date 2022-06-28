class UsersController < ApplicationController
  def index
    @implement_list = User.all.map do|use|
      use
    end
    @implement_list
  end
  def create
    user = User.new(user_params)
    if user.save
      redirect_to index_path
    end
  end
  def delete
    del_id = params[:del_id]
    cur_record = User.find(del_id)
    cur_record.destroy
    cur_record.save
    redirect_to "/"
  end
  # def destroy
  #   id = params[:id]
  #   todo = User.find(id)
  #   todo.destroy
  #   redirect_to index_path
  # end
  # <h6><%=@implement_list %></h6>

  private
  def user_params
    params.require(:users).permit(:todo_text, :due_date)
  end
end