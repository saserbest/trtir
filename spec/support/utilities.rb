def full_title(page_title)
  base_title = "Türkiye'nin yeni sosyal medya ortamı"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end