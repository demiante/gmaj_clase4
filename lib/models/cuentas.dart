class Cuentas {
  final int? numeroDeCuenta;
  final String? nombreDelCliente;
  double monto = 0;
  double montoDonacion = 0;
  Cuentas({
    this.numeroDeCuenta,
    this.nombreDelCliente,
    required this.monto,
  });

  actualizarMontoCuenta(double nuevoMonto) {
    print("El saldo en la cuenta es : $monto");
    print(" $nuevoMonto");
    monto = (monto + nuevoMonto);
    print("Total = $monto");
  }

  imprimirEstadoDeCuenta() {
    print("El saldo en la cuenta es : $monto");
  }

  double donarTzedaka(double pocentajeDonacion) {
    //double montoDonacion;
    montoDonacion = monto * pocentajeDonacion / 100;
    monto = monto - montoDonacion;
    //   print("Se dono: $montoDonacion Su nuevo saldo es: $monto");
    return montoDonacion;
  }
}
