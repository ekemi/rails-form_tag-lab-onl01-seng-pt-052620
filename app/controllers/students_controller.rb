class StudentsController < ApplicationController



#   def show
#     @student = Student.find(params[:id])
#   end
#
#   def new
#   end
#  def  create
#    @student =Student.create(first_name: params[:first_name], last_name: params[:last_name])
#     redirect_to student_path(@student)
#  end
# end
def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student =  Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end

end
