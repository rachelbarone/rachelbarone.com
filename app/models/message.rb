class Message < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :city,
    :state, :country, :phone, :referrer, :body

  validates :email, :first_name, :last_name, :body, presence: true

  def list_attributes
    html = ""

    self.attributes.each do |k,v|
      if k == "email"
          html += "<b>#{k.humanize}:</b>&emsp;<a href='mailto#{v}'>#{v}</a>"
      else
        html += "<b>#{k.humanize}:</b>&emsp;#{v}"
      end

      html += "<br>"
    end

    return html
  end
end
