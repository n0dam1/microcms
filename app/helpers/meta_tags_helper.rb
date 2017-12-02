module MetaTagsHelper
  def amp_url(url)
    amp_uri = URI.parse(url)
    amp_uri.path = "#{amp_uri.path}.amp" unless amp_uri.path.end_with?('amp')
    amp_uri.query = h(amp_uri.query) if amp_uri.query.present?
    amp_uri
  end

  def canonical_url(url)
    canonical_uri = URI.parse(url)
    canonical_uri.path = canonical_uri.path.sub(/\.amp$/, '') if canonical_uri.path.end_with?('amp')
    canonical_uri.query = h(canonical_uri.query) if canonical_uri.query.present?
    canonical_uri
  end
end
