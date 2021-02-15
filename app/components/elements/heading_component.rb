# frozen_string_literal: true

# USAGE - takes argument :p or heading type 1-3 represented as a normal int number
# <%= render(HeadingComponent.new(heading_type: :p)) do %> :p can just as well be 1, 2 or 3
#   Texts
# <% end %>

class Elements::HeadingComponent < ViewComponent::Base
  def initialize(heading_type:)
    @heading_type = heading_type
  end

  def heading
    return "h#{@heading_type}".symbolize unless @heading_type == "" || @heading_type.nil? || @heading_type == :p
    return :p
  end

  def heading_classes
    return "text-#{ class_selector }xl font-mono font-bold text-blue-900" unless @heading_type == "" || @heading_type.nil? || @heading_type == :p || @heading_type == 3
    return "text-xl text-blue-900" unless @heading_type == :p
    return ""
  end

private

  def class_selector
    return 3 if @heading_type == 1

    return @heading_type
  end
end