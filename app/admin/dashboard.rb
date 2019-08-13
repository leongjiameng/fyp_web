ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Current Examination Session" do
          table_for ExamSession.all.order("start_time ASC") do
            column "id", :id
            column "name", :name
            column "start_time", :start_time
            column "end_time", :end_time
          end
        end
        panel "Upcoming Examinations" do
          table_for Examination.all.order("start_time ASC") do
            column "id", :id
            column "name", :name
            column "exam_session", :exam_session
            column "start_time", :start_time
            column "end_time", :end_time
          end
        end
        panel "Unresolved Clashing Report" do
          table_for ClashingReport.all.order("created_at ASC") do
            column "id", :id
            column :candidate do |clashing_report|
              clashing_report.candidate.student.name
            end
            column "exam_registered1", :exam_registered1
            column :exam_registered1 do |clashing_report|
              clashing_report.exam_registered1.examination.name
            end
            column :exam_registered2 do |clashing_report|
              clashing_report.exam_registered2.examination.name
            end
            column "status", :status 
            column "actions" do |enquiry|
              (link_to "View", admin_clashing_report_path(enquiry))
            end
          end
        end
        
      end
    end





    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end

