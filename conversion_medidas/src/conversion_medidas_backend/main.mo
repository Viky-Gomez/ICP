//Realizado por: Viktoría Gomez Aguilera y Brayan Domínguez Saucedo
import Float "mo:base/Float";

actor {
  public query func convertLength(value: Float, fromUnit: Text, toUnit: Text) : async Text {
    let conversionFactor = switch (fromUnit, toUnit) {
      case ("m", "cm") { 100.0 };
      case ("cm", "m") { 0.01 };
      case ("km", "m") { 1000.0 };
      case ("m", "km") { 0.001 };
      // Agrega más conversiones según sea necesario
      case _ { return "Unidades de conversión no soportadas."; };
    };
    let convertedValue = value * conversionFactor;
    return Float.toText(convertedValue) # " " # toUnit;
  };
};