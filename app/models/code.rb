class Code < ApplicationRecord
    # create_table "codes", force: :cascade do |t|
    #     t.integer "code", null: false
    #     t.string "title", null: false
    #     t.text "body"
    #     t.integer "occurrence_count"
    #     t.datetime "created_at", null: false
    #     t.datetime "updated_at", null: false
    #   end

    validates :code, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
    validates :title, presence: true
    validates :occurrence_count, presence: true
    validates :body, length: {maximum: 65_535}

    # def occurrence_count_add
    #     binding.pry
    #     if button_params == "追加"
    #         return @code.occurrence_count + params.require(:occurrence_count)
    #     else
    #         return params.require(:occurrence_count)
    #     end
    # end
end
