require_relative "Registrator"
require_relative "Validator"

registrator = Registrator.new(Validator.new)
registrator.register()