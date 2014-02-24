require 'active_record'
require 'fileutils'
require 'sqlite3'

require_relative '../lib/group_records.rb'

FileUtils.rm_f 'test/setup/db/test.sqlite3'

ActiveRecord::Base.establish_connection(
   :adapter   => 'sqlite3',
   :database  => './test/setup/db/test.sqlite3'
)

ActiveRecord::Migration.class_eval do
  create_table :fake_posts do |t|
    t.string  :title
    t.datetime :created_at
   end
end