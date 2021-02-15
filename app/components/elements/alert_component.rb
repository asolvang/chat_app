class Elements::AlertComponent < ViewComponent::Base
  def initialize(alert_color:)
    @alert_color = alert_color
  end

  def color
    return "green" if @alert_color == :green
    return "red" if @alert_color == :red
    return "blue" if @alert_color == :blue
  end
end