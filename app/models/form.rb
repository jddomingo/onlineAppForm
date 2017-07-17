class Form < ApplicationRecord
=begin
	Mounts the uploader to the column
	allowing retrieveing and uploading of
	corresponding image file.
=end
	mount_uploader :image, ImageUploader
=begin
	Validates input and mostly checks
	if necessary details are filled
	up correctly.
=end
=begin
	validates :name, presence: true, confirmation: true
	validates :sn, presence: true, format: { with: /\d{4}-\d{5}/ }, length: { is: 10 }
	validates :birth, presence: true
	validates :citizenship, presence: true
	validates :caddress, presence: true
	validates :haddress, presence: true
	validates :contact, presence: true
	validates :pname, presence: true
	validates :pcontact, presence: true
	validates :paddress, presence: true
	validates :grades, presence: true
	validates :year, presence: true, length: { is: 4 }, numericality: { only_integer: true }
	validates :current, presence: true
	validates :degree, presence: true
	validates :sts, presence: true
	validates :income, presence: true, numericality: { only_integer: true }
	validates :scholarship, presence: true
	validates :incident, presence: true
	validates :disciplinary, presence: true
	validates :reason, presence: true
	validates :date, presence: true
=end
end
