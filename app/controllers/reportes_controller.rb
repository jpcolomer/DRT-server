class ReportesController < ApplicationController
	before_filter :authenticate_user!
	def download_pdf
		reporte = Reporte.find(params[:id])
		#reporte = Reporte.find_by_file_name(params[:file_name])
		send_file("#{Rails.root}/files/reportes/mensual/1.pdf",
			:filename => "reporte_mensual_01-07-2012.pdf",
			:type => "application/pdf")
	end
end
