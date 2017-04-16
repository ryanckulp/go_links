namespace :go_links do
  desc "Creates table that stores slugs, destination urls, and click counts."
  task :install => :environment do
    puts "installing GoLinks..."

    ActiveRecord::Schema.define do
      create_table :plugins_go_links do |t|
        t.string :slug
        t.string :destination
        t.integer :clicks, default: 0
        t.timestamps null: false
      end
    end

  end
end
