require 'pry' # in case you want to use binding.pry
require 'active_record'
require_relative 'lib/store'
require_relative 'lib/employee'

# Output messages from Active Record to standard out
ActiveRecord::Base.logger = Logger.new(STDOUT)

puts 'Establishing connection to database ...'
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'ar_exercises',
  username: 'development',
  password: 'development',
  host: 'localhost',
  port: 5432,
  pool: 5,
  encoding: 'unicode',
  min_messages: 'error'
)
puts 'CONNECTED'

puts 'Setting up Database (recreating tables) ...'

ActiveRecord::Schema.define do
  drop_table :stores if ActiveRecord::Base.connection.table_exists?(:stores)
  drop_table :employees if ActiveRecord::Base.connection.table_exists?(:employees)
  create_table :stores do |t|
    t.column :name, :string
    t.column :annual_revenue, :integer
    t.column :mens_apparel, :boolean
    t.column :womens_apparel, :boolean
    t.timestamps null: false
  end
  create_table :employees do |table|
    table.references :store
    table.column :first_name, :string
    table.column :last_name, :string
    table.column :hourly_rate, :integer
    table.timestamps null: false
  end
end

class Store < ActiveRecord::Base
  has_many :employees
  validates :name,
    length: {minimum: 3}  
  validates :annual_revenue,
    numericality: {only_integer: true,
                  greater_than: 0}
  validate :check_apparel ## singular to call a method
  private
  
  def check_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:apparel, "nothing sells in this store")
    end  
  end      

end

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :hourly_rate, 
    numericality: { only_integer: true,
                    greater_than: 40, 
                    less_than_or_equal_to: 200 }
  validates_associated :store 
  validates_presence_of :store
end

puts 'Setup DONE'
# binding.pry
