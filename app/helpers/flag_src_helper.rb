module FlagSrcHelper
  def flag_src(iso_alpha2)
    src = iso_alpha2.nil? ? "xx" : iso_alpha2.downcase
    "/assets/flags/4x3/" + src + ".svg"
  end
end
