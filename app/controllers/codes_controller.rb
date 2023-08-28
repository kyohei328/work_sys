class CodesController < ApplicationController

    before_action :set_code, only: %i[edit update destroy]
    # before_action :update_occurrence_count, only: %i[update]

    def index
        @codes = Code.all.order(code: "desc")
    end

    def new
        @code = Code.new
    end

    def create
        # binding.pry
        @code = Code.new(code_params)
        if @code.save
            redirect_to codes_path, scucess: 'エラー内容を保存しました。'
        else
            flash.now[:danger] = '作成に失敗しました。'
            render :new
        end
    end

    def show; end

    def edit; end

    def update
        unless button_params == '回数追加'
            if @code.update(code_params)
                redirect_to codes_path
            else
                render :edit
            end
        else
            @code.occurrence_count += 1
            if @code.save
                redirect_to codes_path
            else
                render :index
            end
        end

    end

    def destroy
        @code.destroy!
        redirect_to codes_path, success: '削除しました'
    end

    private

    def code_params
        params.require(:code).permit(:code, :title, :body, :occurrence_count)
    end

    def set_code
        @code = Code.find(params[:id])
    end

    def button_params
        params.require(:commit)
    end

    # def update_occurrence_count
    #     if button_params == '回数追加'
    #         # occurrence_count = params.require(:occurrence_count).to_i
    #         # @code.occurrence_count = @code.occurrence_count + occurrence_count
    #         @code.occurrence_count += 1
    #     end
    # end

end
