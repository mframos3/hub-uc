module PagesHelper
    def get_course(pub)
        Course.find(pub.course_id)
    end

    def get_room(event)
        Room.find(event.room_id)
    end

    def get_comments(pub)
        pub.comments.order(created_at: :desc).limit(2)
    end

    def get_user_by_pub(pub)
       User.where(:id => pub.user_id).first
    end

    # Extraido de https://stackoverflow.com/questions/7023545/truncate-string-with-rails
    def truncate_middle( string, options = {} )
        options[:omission] = "...#{string[-5, 5]}"    # Use last 5 chars of string.
        truncate( string, options )
      end
    
    def get_author_name(comment)
        User.find(comment.user_id).name
    end
end
