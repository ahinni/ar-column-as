module ActiveRecord
  module ConnectionAdapters
    class SQLiteAdapter < AbstractAdapter
      def year_calc(column)
        "strftime('%Y', #{column.to_s})"
      end
      
      def month_calc(column)
        "strftime('%m', #{column.to_s})"
      end
    end
    
    class MysqlAdapter < AbstractAdapter
      def year_calc(column)
        "YEAR(#{column.to_s})"
      end
      
      def month_calc(column)
        "MONTH(#{column.to_s})"
      end
    end
  end
end

module Sql
  def Sql.column_as(column, options = {})
    out = [column]
    out << "AS '#{options[:as]}'" if options[:as]
    out.join(' ')
  end

  def Sql.year(column, options = {})
    column_as(ActiveRecord::Base.connection.year_calc(column), options)
  end

  def Sql.month(column, options = {})
    column_as(ActiveRecord::Base.connection.month_calc(column), options)
  end
end

