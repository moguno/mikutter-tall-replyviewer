# coding:UTF-8

class Gdk::ReplyViewer 
  alias :height_org :height

  def height
    height_tmp = height_org

    # メンション(元々のheight()で判定）かつ、リプライメッセージ取得済み
    result = if (height_tmp != 0 && @message)
      main_message.pixel_size[1]
    else
      height_tmp
    end

    result
  end
end


Plugin.create(:mikutter_tall_replyviewer) {
  # プラグインのあり方について真剣な議論が必要なステージに来ている。
}

