# frozen_string_literal: true

class Elements::ButtonComponent < ViewComponent::Base
  def initialize(button_type:)
    @button_type = button_type
  end

  def button_type
    @button_type.submit
  end
end
