class CommonServices
  def self.get_current_year()
    return Time.now.strftime('%Y')
  end
end