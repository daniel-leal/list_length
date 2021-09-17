defmodule ListLengthTest do
  use ExUnit.Case, async: true
  doctest ListLength

  describe "call/1" do
    test "Returns the length of the list" do
      # Arrange
      list = ["a", :ok, 1, 15, 26]
      expected_response = 5

      # Act
      response = ListLength.call(list)

      # Assert
      assert expected_response == response
    end

    test "Returns 0 if list is empty" do
      # Arrange
      list = []
      expected_response = 0

      # Act
      response = ListLength.call(list)

      # Assert
      assert expected_response == response
    end
  end
end
