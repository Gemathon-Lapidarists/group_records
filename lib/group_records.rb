require "group_records/version"

module GroupRecords
  def group_by_month
  	self.order(:created_at).group_by{|obj| obj.created_at.strftime("%B %Y")}
  end

  def group_by_year
  	self.order(:created_at).group_by{|obj| obj.created_at.strftime("%Y")}
  end
end

ActiveRecord::Relation.send(:include, GroupRecords)
