class SchoolClassesController < ApplicationController
     
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
               @school_class = SchoolClass.new 
          end

          def set_school_class_params(*args)
               params.require(:school_class).permit(*args)
          end

          def create_and_save 
               @school_class = SchoolClass.new(set_school_class_params(:title, :room_number))
               @school_class.save 
          end

          def find_and_show
               @school_class = SchoolClass.find(params[:id])
          end
          
          def safe_update
               @school_class.update(set_school_class_params(:title))
          end
          
          def self_redirect
               redirect_to(school_class_path(@school_class))
          end

          # ============

          def form_param(model)
               return model 
          end

end
