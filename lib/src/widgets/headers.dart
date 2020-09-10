import 'dart:ui';

import 'package:flutter/material.dart';


class HeaderCuadrado extends StatelessWidget {
  // const HeaderCuadrado({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Colors.purple,
    );
  }
}


class HeaderRedondeado extends StatelessWidget {
  // const HeaderCuadrado({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50) )
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  // const HeaderCuadrado({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: double.infinity,
    width: double.infinity,
    // color: Colors.purple,
    child: CustomPaint(
      painter: _HeaderDiagonalPainter(),
    )
      );
  }
}


class _HeaderDiagonalPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      final paint = Paint();
      //Propiedades

      paint.color = Color(0xff615AAB);
      paint.style = PaintingStyle.fill; // fill es lleno .stroke linea
      paint.strokeWidth = 5.0;

      final path = Path();

      //Dibujar path y paint
      path.moveTo(0, size.height * 0.35);
      path.lineTo(size.width, size.height * 0.30);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);



      canvas.drawPath(path, paint);
    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    
    return true;
  }


}


class HeaderTriangulo extends StatelessWidget {
  // const HeaderCuadrado({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: double.infinity,
    width: double.infinity,
    // color: Colors.purple,
    child: CustomPaint(
      painter: _HeaderTriangulo(),
    )
      );
  }
}

    class _HeaderTriangulo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
     final paint = Paint();
      //Propiedades

      paint.color = Color(0xff615AAB);
      paint.style = PaintingStyle.fill; // fill es lleno .stroke linea
      paint.strokeWidth = 5.0;

      final path = Path();

      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
      path.lineTo(0, 0);


      canvas.drawPath(path, paint);
      

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    
    return true;
  }
}


class HeaderPico extends StatelessWidget {
  // const HeaderCuadrado({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: double.infinity,
    width: double.infinity,
    // color: Colors.purple,
    child: CustomPaint(
      painter: _HeaderPico(),
    )
      );
  }
}

    class _HeaderPico extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
     final paint = Paint();
      //Propiedades

      paint.color = Color(0xff615AAB);
      paint.style = PaintingStyle.fill; // fill es lleno .stroke linea
      paint.strokeWidth = 5.0;

      final path = Path();

      path.lineTo( 0, size.height * 0.30);
      path.lineTo(size.width * 0.50, size.height * 0.35);
      path.lineTo(size.width, size.height * 0.30);
      path.lineTo(size.width, 0);


      canvas.drawPath(path, paint);
      

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    
    return true;
  }
}


class HeaderCurva extends StatelessWidget {
  // const HeaderCuadrado({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: double.infinity,
    width: double.infinity,
    // color: Colors.purple,
    child: CustomPaint(
      painter: _HeaderCurva(),
    )
      );
  }
}

    class _HeaderCurva extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
     final paint = Paint();
      //Propiedades

      paint.color = Color(0xff615AAB);
      paint.style = PaintingStyle.fill; // fill es lleno .stroke linea
      paint.strokeWidth = 20.0;

      final path = Path();

      path.lineTo( 0, size.height * 0.30);
      path.quadraticBezierTo(size.width * 0.5, size.height * 0.50, size.width, size.height * 0.30);
      path.lineTo(size.width, 0);




      canvas.drawPath(path, paint);
      

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    
    return true;
  }
}


class HeaderWave extends StatelessWidget {
  // const HeaderCuadrado({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: double.infinity,
    width: double.infinity,
    // color: Colors.purple,
    child: CustomPaint(
      painter: _HeaderWave(),
    )
      );
  }
}

    class _HeaderWave extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
     final paint = Paint();
      //Propiedades

      paint.color = Color(0xff615AAB);
      paint.style = PaintingStyle.fill; // fill es lleno .stroke linea
      paint.strokeWidth = 20.0;

      final path = Path();

      path.lineTo( 0, size.height * 0.30);
      path.quadraticBezierTo(size.width * 0.25, size.height * 0.35, size.width * 0.50, size.height * 0.30);
      path.quadraticBezierTo(size.width * 0.75, size.height * 0.25, size.width, size.height * 0.30);
      path.lineTo(size.width, 0);




      canvas.drawPath(path, paint);
      

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    
    return true;
  }
}


class HeaderGradient extends StatelessWidget {
  // const HeaderCuadrado({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: double.infinity,
    width: double.infinity,
    // color: Colors.purple,
    child: CustomPaint(
      painter: _HeaderGradient(),
    )
      );
  }
}

    class _HeaderGradient extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
     
     final Rect rect = new Rect.fromCircle(
       center: Offset(50.0, 25.0),
       radius: 180
     );

     final Gradient gradiente = LinearGradient(
       colors: <Color> [
         Color(0xff6D05E8),
         Color(0xffC012FF),
         Color(0xff6D05FA),
       ]

     
     );

     final paint = Paint()..shader = gradiente.createShader(rect);
      //Propiedades

      paint.color = Color(0xff615AAB);
      paint.style = PaintingStyle.fill; // fill es lleno .stroke linea
      paint.strokeWidth = 20.0;

      final path = Path();

      path.lineTo( 0, size.height * 0.30);
      path.quadraticBezierTo(size.width * 0.25, size.height * 0.35, size.width * 0.50, size.height * 0.30);
      path.quadraticBezierTo(size.width * 0.75, size.height * 0.25, size.width, size.height * 0.30);
      path.lineTo(size.width, 0);




      canvas.drawPath(path, paint);
      

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    
    return true;
  }
}