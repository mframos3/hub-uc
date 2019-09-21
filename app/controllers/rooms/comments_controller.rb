class Rooms::CommentsController < CommentsController
    before_action :set_commentable

        private

            def set_commentable
                @commentable = Room.find(params[:room_id])
            end
end
