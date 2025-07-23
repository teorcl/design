import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 300, color: Color(0xFF615AAB));
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  const HeaderBordesRedondeados({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Color(0xFF615AAB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
          bottomRight: Radius.circular(60),
        ),
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeaderDiagonalPainter()),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Este paint hace referencia al lapiz que se usará para dibujar
    final lapiz = Paint();

    //Propiedades o características del lapiz
    lapiz.color = Color(0xFF615AAB); // Color del lapiz
    lapiz.style = PaintingStyle.fill; // Estilo del lapiz
    lapiz.strokeWidth = 5; // Ancho del lapiz

    //Path es como el trazo o el camino que dibujarás con el lápiz
    final path = Path();
    path.moveTo(0, size.height * 0.35);
    path.lineTo(
      size.width,
      size.height * 0.30,
    ); //Trace una línea desde el punto donde quedo en lo anterior, hasta el punto (todo el ancho de la pantalla, 30% del alto)
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    // ..lineTo(0, size.height * 0.6)
    // ..lineTo(size.width, size.height * 0.4)
    // ..lineTo(size.width, 0)
    // ..close();
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderTriangular extends StatelessWidget {
  const HeaderTriangular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeaderTriangularPainter()),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Este paint hace referencia al lapiz que se usará para dibujar
    final lapiz = Paint();

    //Propiedades o características del lapiz
    lapiz.color = Color(0xFF615AAB); // Color del lapiz
    lapiz.style = PaintingStyle.fill; // Estilo del lapiz
    lapiz.strokeWidth = 5; // Ancho del lapiz

    //Path es como el trazo o el camino que dibujarás con el lápiz
    final path = Path();
    path.moveTo(size.width, size.height);
    path.lineTo(
      size.width,
      0,
    ); //Trace una línea desde el punto donde quedo en lo anterior, hasta el punto (todo el ancho de la pantalla, 30% del alto)
    //path.lineTo(0, size.height);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//? Header pico
class HeaderPico extends StatelessWidget {
  const HeaderPico({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeaderPicoPainter()),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    lapiz.color = Color(0xFF615AAB); // Color del lapiz
    lapiz.style = PaintingStyle.fill; // Estilo del lapiz
    lapiz.strokeWidth = 5; // Ancho del lapiz

    final path = Path();
    path.moveTo(0, size.height * 0.20);
    path.lineTo(size.width * 0.5, size.height * 0.28);
    path.lineTo(size.width, size.height * 0.20);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//? Header Curvo
class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeaderCurvoPainter()),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    lapiz.color = Color(0xFF615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    final path = Path();
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
      size.width * 0.5, //Esta coordenada y la siguiente son las coordenadas
      size.height * 0.5, //del punto por que debe pasar la curva
      size.width,
      size.height * 0.25, // Este punto es el final de la curva
    );
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//? Header wave
class HeaderWave extends StatelessWidget {
  const HeaderWave({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeaderWavePainter()),
    );
  }
}

class _HeaderWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    lapiz.color = Color(0xFF615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    final path = Path();
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
      size.width * 0.25, //Esta coordenada y la siguiente son las coordenadas
      size.height * 0.37, //del punto por que debe pasar la curva
      size.width * 0.5,
      size.height * 0.25, // Este punto es el final de la curva
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.125,
      size.width,
      size.height * 0.25,
    );
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWaveGradient extends StatelessWidget {
  const HeaderWaveGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeaderWaveGradientPainter()),
    );
  }
}

class _HeaderWaveGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Gradient gradient = LinearGradient(
      colors: [Color(0xFF6D05E8), Color(0xFFC012FF), Color(0xFFFFFF00)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [0.2, 0.5, 1.0],
    );

    final Rect rect = Rect.fromCircle(
      center: Offset(0, 55),
      radius: size.width,
    );

    final lapiz = Paint()..shader = gradient.createShader(rect);

    lapiz.color = Colors.red;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    final path = Path();
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
      size.width * 0.25, //Esta coordenada y la siguiente son las coordenadas
      size.height * 0.37, //del punto por que debe pasar la curva
      size.width * 0.5,
      size.height * 0.25, // Este punto es el final de la curva
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.125,
      size.width,
      size.height * 0.25,
    );
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
