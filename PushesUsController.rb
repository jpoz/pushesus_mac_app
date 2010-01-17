# PushesUsController.rb
# PushesUsTester
#
# Created by James Pozdena on 1/16/10.
# Copyright 2010 JPoz. All rights reserved.


require 'rubygems'
require 'pushesus' 


class PushesUsController
	attr_writer :url_field, :network_field, :device_field, :alert_field
	
	def awakeFromNib
		
	end
	
	def send(sender)
		puts "Sending!"
		unless @url_field.stringValue.empty?
			puts "base_url '#{@url_field.stringValue}'"
			PushesUs.class_eval("base_uri '#{@url_field.stringValue}'")
		end
		PushesUs::Notification.send(@network_field.stringValue,@device_field.stringValue,@alert_field.stringValue)
 	end
	
	
end


