class User < ActiveRecord::Base
  has_many :postulations
  
  def users_benef_company
    users = []
    Benefit.joins(:company).where('companies.type = ? ', 'private').where('benefits.amount < ?', 10000000).each do |b|
      users << b.postulations.user
    end
    return users
  end
end
