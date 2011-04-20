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

def db_column_as(column, options = {})
  out = [column]
  out << "AS '#{options[:as]}'" if options[:as]
  out.join(' ')
end

def db_year(column, options = {})
  db_column_as(ActiveRecord::Base.connection.year_calc(column), options)
end

def db_month(column, options = {})
  db_column_as(ActiveRecord::Base.connection.month_calc(column), options)
end

