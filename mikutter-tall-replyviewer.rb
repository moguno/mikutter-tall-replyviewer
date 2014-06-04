#! coding:UTF-8

class Gdk::ReplyViewer 
  alias :main_message_org :main_message

  def main_message(context = dummy_context)
    layout = main_message_org(context)

    @height ||= layout.pixel_size[1]
    helper.reset_height

    layout
  end

  alias :height_org :height

  def height
    tmp_height = height_org

    if tmp_height != 0 && @height
      @height
    else
      0
    end
  end
end


Plugin.create(:mikutter_tall_replyviewer)
end
