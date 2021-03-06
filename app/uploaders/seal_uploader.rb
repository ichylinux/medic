# encoding: utf-8

require 'daddy/ocr'

class SealUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "/var/lib/medic/#{Rails.env}/#{model.class.to_s.underscore}/#{model.member_id}/#{model.id}"
  end

  def cache_dir
    "/var/lib/medic/#{Rails.env}/tmp/cache"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  process :set_metadata

  def set_metadata
    if file.present?
      self.model.original_filename = file.original_filename
      self.model.content_type = file.content_type
      self.model.file_size = file.size
      self.model.ocr_text = Daddy::Ocr.scan(file.path) unless Rails.env.test?
    end
  end

  # Create different versions of your uploaded files:
  version :thumb do
    process :resize_to_fit => [120, 90]
  end

  version :popup do
    process :resize_to_fit => [320, 480]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
