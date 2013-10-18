# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
  
          def test_1
                assert_equal "1/1", (Fraccion.new(3,4) + Fraccion.new(1,4)).to_s      
                assert_equal "1/2", (Fraccion.new(4,4) - Fraccion.new(2,4)).to_s
                assert_equal "1/2", (Fraccion.new(1,4) * Fraccion.new(2,1)).to_s
                assert_equal "1/2", (Fraccion.new(1,4) / Fraccion.new(1,2)).to_s
        end
  
end
