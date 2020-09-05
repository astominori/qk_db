class MembersController < ApplicationController
  def index
    @members = Member.page(params[:page]).per(6)
  end

  def new
    @member = Member.new
  end

  def create
    Member.create(member_params)
    flash[:notice] = "作成しました"
    redirect_to members_path
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    @member.update(member_params)
    flash[:notice] = "更新しました"
    redirect_to members_path
  end

  def destroy
    Member.delete(params[:id])
    flash[:notice] = "削除しました"
    redirect_to members_path
  end

  private
    def member_params
      params.require(:member).permit(:name,:category,:birthday)
    end
end
