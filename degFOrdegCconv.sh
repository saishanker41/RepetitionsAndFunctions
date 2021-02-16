#!/bin/bash -x

function celsiusToFahrenheit() {

      read -p "Enter temperature(C): " tc
      Tf=$(awk "BEGIN {print(9 * $tc)/5 + 32}")
      echo "$tc C = $Tf F"

}
function FahrenheitToCelsius() {

      read -p "Enter temperature(F): " Tf
      tc=$(awk "BEGIN {print((5/9) * ($Tf - 32))}")
      echo "Tf F = $tc C"
}
celsiusToFahrenheit
FahrenheitToCelsius
