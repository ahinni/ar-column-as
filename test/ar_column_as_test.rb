require 'test_helper'

class ActiveRecordColumnAsTest < ActiveSupport::TestCase
  test "db_year" do
    Foo.create(:published_at => Date.parse('May 29, 1971'))

    foo = Foo.last(:select => Sql::year(:published_at, :as => :year))
    assert_equal('1971', foo.year)
  end

  test "db_month" do
    Foo.create(:published_at => Date.parse('May 29, 2971'))
    foo = Foo.last(:select => Sql::month(:published_at, :as => :month))
    assert_equal('05', foo.month)
  end
end
