defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum/1" do
    test "When there is file with the given name, returns the sum of numbers" do
      response = Numbers.sum("numbers")

      expected_response = {:ok, %{result: 13}}

      assert response == expected_response
    end

    test "When there is no file with the given name, returns an error" do
      response = Numbers.sum("banana")

      expected_response = {:error, %{message: "Invalid file."}}

      assert response == expected_response
    end
  end
end
