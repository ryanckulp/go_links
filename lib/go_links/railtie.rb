class GoLink
  class Railtie < Rails::Railtie

    rake_tasks do
      load "tasks/go_links.rake"
    end

  end
end
