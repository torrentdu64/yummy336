class PhotoUploader < CarrierWave::Uploader::Base
   #include Cloudinary::CarrierWave
  include CarrierWave::MiniMagick

  # include Sprockets::Helpers::RailsHelper
  #include Sprockets::Helpers::IsolatedHelper

  storage :fog

  #include CarrierWave::MimeTypes
  #process :set_content_type

  def store_dir
    "uploads/#{model.name}/#{mounted_as}/#{model.id}"
  end

  version :user_thumb do
    process :resize_to_limit => [200, 200]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end


  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  #storage :file




  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url(*args)
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_whitelist
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
  # Apply an incoming chained transformation: limit image to 1000x1200 and
  # add a 30-pixel watermark 5 pixels from the south east corner.
   #process :mark
  # version :watermarke do
  #   cloudinary_transformation :overlay => "pinkygirls",
  #      :width => 80, :crop => :scale,
  #      :gravity => :south_east, :x => 5, :y => 5,
  #      :html_width => 300, :html_height => 200
  # end
  # cloudinary_transformation :transformation => [

  #     {:overlay => "pinkygirls",
  #      :width => 80, :crop => :scale,
  #      :gravity => :south_east, :x => 5, :y => 5,
  #      :html_width => 300, :html_height => 200}
  #   ]

  def mark
    return :overlay => "pinkygirls",
       :width => 200, :crop => :fill

  end

  # Eagerly transform image to 150x200 with a sepia effect applied and then
  # rotate the resulting image by 10 degrees.

end
