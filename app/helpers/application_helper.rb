module ApplicationHelper
  def default_meta_tags
    {
      site: Settings.site.name,
      reverse: true, # タイトルタグ内の表記順をページタイトル|サイトタイトルの順にする
      title: Settings.site.page_title,
      description: Settings.site.page_description,
      og: default_og
    }
  end

  private

  def default_og
    {
      title: :title,
      type: Settings.site.og.type,
      url: request.original_url,
      image: image_url(Settings.site.og.image_path),
      site_name: Settings.site.name,
      description: :description,
      locale: 'ja_JP'
    }
  end
end
