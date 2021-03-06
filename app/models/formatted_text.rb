class FormattedText < Content

  after_initialize :set_kind

  #Validations
  validates :duration, :numericality => { :greater_than => 0 }
  validates :data, :presence => true

  # Automatically set the kind for the content
  # if it is new.
  def set_kind
    return unless new_record?
    self.kind = Kind.where(:name => 'Text').first
  end

  # Pass along the HTML to the frontend.
  def render_details
    require 'RedCloth'
    {:html => self.convert_to_html()}
  end

  # Convert the user-supplied text to HTML.
  def convert_to_html
    require 'RedCloth'
    formatted = RedCloth.new(self.data, [:filter_html])
    return formatted.to_html
  end

end
