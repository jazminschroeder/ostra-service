$:.unshift File.dirname(__FILE__) + '/lib'

require './ostra_service'
run OstraService
