# frozen_string_literal: true

module ApplicationHelper
  # ページごとの完全なタイトルを返す
  # メソッド定義とオブション変数の設定
  def full_title(page_title = '')
    base_title = 'Ruby on Rails Tutorial Sample App' # 変数の宣言、代入
    if page_title.empty? # 論理値テスト
      base_title # 暗黙の戻り値、falseの場合はbase_titleを返す
    else
      "#{page_title} | #{base_title}" # 文字列の式展開、trueの場合はこれを返す
    end
  end
end
