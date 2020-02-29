class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
   
    has_many :memos
    has_many :mandaras
    has_many :months
    has_many :posts
    has_many :weeks
    has_many :years
    has_many :todos
    has_many :levels
    
    validates :name, presence: true
    

    def show_last_year
      if (last_year = years.last).present?
        if last_year.title?
           last_year.title
        else
          'titleがありません。'
        end
      else
        'まだ年間目標はありません。'
      end
    end

    def showyear_last_year
      if (last_year = years.last).present?
           "#{last_year.year}年目標"
      else
        '年が指定されていません。'
      end
    end

    def show_last_month
      if (last_month = months.last).present?
        if last_month.text?
           last_month.text
        else
          'titleがありません。'
        end
      else
        'まだ月間目標はありません。'
      end
    end

    def showmonth_last_month
      if (last_month = months.last).present?
           "#{last_month.month}月目標"
        else
          '月が指定されていません。'
        end
    end

    def show_last_week
      if (last_week = weeks.last).present?
        if last_week.text?
           last_week.text
        else
          'titleがありません。'
        end
      else
        'まだ週間目標はありません。'
      end
    end

    def showweek_last_week
      if (last_week = weeks.last).present?
           "#{last_week.week}週目標"
        else
          '週が指定されていません。'
        end
    end

    def show_last_post
      if (last_post = posts.last).present?
        if last_post.text?
           last_post.text
        else
          'まだ振り返りはありません。'
        end
      else
        'まだ振り返りはありません。'
      end
    end

    def showpost_last_post
      if (last_post = posts.last).present?
           last_post.updated_at.strftime("%m月%d日")
        else
          '日が指定されていません。'
        end
    end

    def show_last_todo
      if (last_todo = todos.last).present?
        if last_todo.todo1?
           last_todo.todo1
        else
          'まだTODOはありません。'
        end
      else
         'まだTODOはありません。'
      end
    end

    def showtodo_last_todo
      if (last_todo = todos.last).present?
           last_todo.updated_at.strftime("%m月%d日")
      end
    end

    def show_last_memo
      if (last_memo = memos.last).present?
        if last_memo.title?
          last_memo.title
        else
          last_memo.text
        end
      else
        'TODOリストがありません。'
      end
    end



  end
