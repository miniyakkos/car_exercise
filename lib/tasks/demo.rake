namespace :demo do
  desc 'Drop, create, migrate, seed, demo'
  task :recreate do
    exit if Rails.env.production?
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
    Rake::Task['db:seed'].invoke
    Rake::Task['demo:create'].invoke
  end

  desc 'Create demo data'
  task create: :environment do
    exit if Rails.env.production?

    create_dummy_data
  end

  def create_dummy_data
    require 'factory_bot_rails'
    include FactoryBot::Syntax::Methods

    10.times do |i|
      create :car
    end

    10.times do |i|
      create :person
    end

    10.times do |i|
      create :ownership
    end
  end
end
