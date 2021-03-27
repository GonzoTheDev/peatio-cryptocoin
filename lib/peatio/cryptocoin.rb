require "active_support/core_ext/object/blank"
require "active_support/core_ext/enumerable"
require "peatio"

module Peatio
  module Cryptocoin
    require "bigdecimal"
    require "bigdecimal/util"

    require "peatio/cryptocoin/blockchain"
    require "peatio/cryptocoin/client"
    require "peatio/cryptocoin/wallet"

    require "peatio/cryptocoin/hooks"

    require "peatio/cryptocoin/version"
  end
end
