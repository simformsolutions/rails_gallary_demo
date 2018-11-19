ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Users" do
          ul do
            User.last(5).map do |user|
              li link_to(user.email, admin_user_path(user))
            end
          end
        end
      end

      column do
        panel "Info" do
          para "Welcome to Admin."
        end
      end
    end
  end # content
end
