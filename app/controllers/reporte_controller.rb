class ReporteController < ApplicationController
	before_filter :authenticate_user!
	def download_pdf
		reporte = Reporte.find_by_file_name(params[:file_name])
		send_file("#{Rails.root}/files/#{reporte.get_tipo}/#{reporte.id}.pdf",
			:filename => "#{reporte.file_name}.pdf",
			:type => "application/pdf")
	end
end
