class StudentsController < ApplicationController

     def new
          new_form_for_model
     end

     def create
          create_and_save
          self_redirect
     end

     def show 
          find_and_show
     end

     def edit 
          find_and_show
     end

     def update 
          find_and_show
          safe_update
          self_redirect
     end

     private 

          def new_form_for_model
               @student = Student.new 
          end

          def set_student_params(*args)
               params.require(:student).permit(*args)
          end

          def create_and_save 
               @student = Student.new(set_student_params(:first_name, :last_name))
               @student.save 
          end

          def find_and_show
               @student = Student.find(params[:id])
          end
          
          def safe_update
               @student.update(set_student_params(:first_name))
          end
          
          def self_redirect
               redirect_to(student_path(@student))
          end

end
