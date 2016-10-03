class NewCustomerForm < OnForm::Form
  expose %i(name email phone_number), on: :customer

  validates_presence_of :email, :phone_number

  def initialize(customer = Customer.new)
    @customer = customer
  end
end