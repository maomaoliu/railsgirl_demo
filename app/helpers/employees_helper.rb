module EmployeesHelper
  GENDER_MAP = {nil => 'Unknown', true => 'Female', false => 'Male'}
  def show_gender gender
    puts gender
    GENDER_MAP[gender]
  end
end
