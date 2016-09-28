class Obj < Scrivito::BasicObj

  def homepages
    Homepage.all.to_a.sort_by{|obj| obj.country_name_translation}
  end

  def self.countries_based_on_flag_images
    @countries_based_on_flag_images = Obj.flag_files.map do |file|
      File.basename(file, File.extname(file))
    end
  end

  def self.flag_files
    Dir.glob("#{Rails.root}/app/assets/images/flags/*.png")
  end

end
