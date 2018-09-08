require('minitest/autorun')
require('minitest/rg')

require_relative('../my_functions')

class FunctionsTest < MiniTest::Test

  def test_greet()
    #tests should ensure they cover Arrange, Act and Assert.
    # Arrange is basically make sure they run in a certain order,
    #simply functions will not have this.  Act is calling the method
    #and Assert is confirming that it works
    #Arrange
    # nothing to do here
    #
    #   Act
      result = greet("Bob", "morning")

    # assert
      assert_equal("Good morning, Bob", result)
  end

  def test_favColour
#Arrange - nothing

    #Act
    result = favColour("purple")
    #assert
    assert_equal("My favourite colour is purple", result)
  end

  def test_add()
    #arrange - nothing here
    #Act
    result = add(10, 37)

    #assert
    assert_equal(47, result)
  end
  #naming convention when you
  #run more than one test on a function
  #write test_functionname__description
  def test_add__negative()
    result = add(4,-2)
    assert_equal(2, result)
  end

end
