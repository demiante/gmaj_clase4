import 'package:clase4/models/cuentas.dart';

/*Crear una cuenta bancaria con los siguientes atributos:
*. nombre del titular
*. numero de cuenta
*. saldo en cuenta


Recordar crear el constructor dentro de la clase y definir cuales variables no se podrán cambiar su valor.

Crear 2 cuentas a 2 personas diferentes.
A la primer persona asignarle el monto de $45.000 y el numero de cuenta: 23401
A la segunda persona asignarle el monto de $34.000 y el numero de cuenta: 23402


Una vez teniendo creadas las 2 cuentas realizar los siguiente:

Ambas personas deciden dar Tzedaka:
1) Obtener el 12% de la primera cuenta (multiplicando el total x 0.12)
2) Obtener el 16% de la segunda cuenta (multiplicando el total x 0.16)

3) Imprimir con un mensaje quien dio mas tzedaka.
*/
void main() {
  Cuentas cuentaA = Cuentas(
      numeroDeCuenta: 23401, nombreDelCliente: "Pepe Lui", monto: 45000);
  Cuentas cuentaB = Cuentas(
      numeroDeCuenta: 23402, nombreDelCliente: "Paco Perez", monto: 34000);
  //print("Cuenta a Nombre de: ${cuentaA.nombreDelCliente}");
  double donacionClienteA = 12;
  double donacionClienteB = 16;

  cuentaA.imprimirEstadoDeCuenta();
  cuentaA.donarTzedaka(donacionClienteA);
  // cuentaA.imprimirEstadoDeCuenta();
  //cuentaB.imprimirEstadoDeCuenta();
  cuentaB.donarTzedaka(donacionClienteB);
  cuentaB.imprimirEstadoDeCuenta();

  if (cuentaB.montoDonacion > cuentaA.montoDonacion) {
    print(
        "El cliente B dono : ${cuentaB.montoDonacion}  mas que el Cliente A que dono :   ${cuentaA.montoDonacion}");
  } else if (cuentaB.montoDonacion == cuentaA.montoDonacion) {
    print(
        "El cliente B dono : ${cuentaB.montoDonacion}  igual que el Cliente A que dono :   ${cuentaA.montoDonacion}");
  } else if (cuentaB.montoDonacion < cuentaA.montoDonacion) {
    print(
        "El cliente B dono : ${cuentaB.montoDonacion}  menos que el Cliente A que dono :   ${cuentaA.montoDonacion}");
  }

  //cuentaA.actualizarMontoCuenta(0);
}
