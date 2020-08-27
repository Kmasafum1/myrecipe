class RecipesController < ApplicationController
  # ログインしていない人のアクセスを制限する
  # ログインしていない人は一覧画面だけみれる
  before_action :authenticate_user!, except: [:index]
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    # 詳細画面では一つの情報を取ってくる
  end

  def new
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    # 誰が投稿したのかがわかる
    if @recipe.save
      redirect_to recipe_path(@recipe), notice: '投稿に成功しました。'
      # 投稿が保存されたら投稿したレシピの詳細画面にいく
    else
      render :new
    end    
  end  

  def edit
    @recipe = Recipe.find(params[:id])
    if @recipe.user_id != current_user.id
    # 投稿した内容に結びついている(ユーザーの)idとログインユーザーが等しくない場合
     redirect_to recipes_path, alert:  '不正なアクセスです。'
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe), notice: '更新に成功しました'
    else
      render :edit
    end
  end  

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to recipes_path
    # @(アットマーク)を付けないものはローカル変数と言われ、viewに渡すことができない(反映しない)
  end   

  private
  def recipe_params
    params.require(:recipe).permit(:title, :body)
  end
end

