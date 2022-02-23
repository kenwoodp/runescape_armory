require 'sinatra'
require 'sinatra/reloader' if development?()
require 'pry' if development?()
require 'bcrypt'

enable :sessions

require_relative 'db/db'

require_relative 'models/item'
require_relative 'models/user'
require_relative 'models/inventory'
require_relative 'models/xp'
require_relative 'models/boss'

require_relative 'controllers/items_controller'
require_relative 'controllers/sessions_controller'
require_relative 'controllers/users_controller'
require_relative 'controllers/inventory_items_controller'
require_relative 'controllers/xp_controller'
require_relative 'controllers/boss_controller'

require_relative 'helpers/sessions_helper'