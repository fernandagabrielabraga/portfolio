class HomepageController < ApplicationController
  def home
  end
  def download_pdf
    send_file(
      "#{Rails.root}/app/assets/docs/Fernanda_Gabriela_Braga_Resume.pdf",
      type: "application/pdf",
      disposition: 'inline', # 'inline' if you want to show PDF in the browser instead of downloading it directly
      x_sendfile: true
    )
  end
end
