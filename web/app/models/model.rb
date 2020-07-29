class Model < ApplicationRecord

    #model 에 종속, 게시물 삭제시 comment 전체 다 삭제
    has_many :comments, dependent: :destroy
end
