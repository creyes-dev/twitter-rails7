module FlagSrcHelper
  def flag_src(iso_alpha2)
    src = "xx" if iso_alpha2.nil? || iso_alpha2.downcase
    "/assets/flags/4x3/" + src + ".svg"
  end
end
