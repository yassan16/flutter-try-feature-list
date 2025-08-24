import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class DominatorScreen99001 extends StatefulWidget {
  const DominatorScreen99001({super.key});

  @override
  DominatorScreen99001State createState() => DominatorScreen99001State();
}

class DominatorScreen99001State extends State<DominatorScreen99001>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnim;
  late final Animation<double> _glowAnim;
  late final Animation<double> _ringRotationAnim;
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _soundPlayed = false;
  bool _showBootText = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _scaleAnim = Tween<double>(
      begin: 0.5,
      end: 1.0,
    ).chain(CurveTween(curve: Curves.easeOutExpo)).animate(_controller);
    _glowAnim = Tween<double>(
      begin: 0.0,
      end: 36.0,
    ).chain(CurveTween(curve: Curves.easeOutCubic)).animate(_controller);
    _ringRotationAnim = Tween<double>(
      begin: 0.0,
      end: 2 * 3.14159,
    ).chain(CurveTween(curve: Curves.easeInOutCubic)).animate(_controller);
    // アニメーション開始と同時に音声再生
    _controller.forward();
    _playBootSound();
    // 19秒後にテキストを非表示
    Future.delayed(const Duration(seconds: 19), () {
      if (mounted) setState(() => _showBootText = false);
    });
  }

  void _playBootSound() async {
    if (_soundPlayed) return;
    _soundPlayed = true;
    try {
      await _audioPlayer.play(AssetSource('music/dominator_bootSound.mp3'));
    } catch (e) {
      debugPrint('ドミネーター起動音の再生に失敗: $e');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(child: CustomPaint(painter: _GridPainter())),
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                final double scale = _scaleAnim.value;
                final double glow = _glowAnim.value;
                final double ringRot = _ringRotationAnim.value;
                return SizedBox(
                  width: 240 * scale,
                  height: 240 * scale,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      for (int i = 0; i < 3; i++)
                        Transform.rotate(
                          angle: ringRot * (1 - i * 0.2) * (i.isEven ? 1 : -1),
                          child: CustomPaint(
                            size: Size(200 * scale, 200 * scale),
                            painter: _RingPainter(
                              color: Colors.cyanAccent.withOpacity(
                                0.25 + 0.15 * i,
                              ),
                              thickness: 4.0 + i * 2.5,
                              glow: 8.0 + glow * 0.7,
                            ),
                          ),
                        ),
                      Container(
                        width: 90 * scale,
                        height: 90 * scale,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: RadialGradient(
                            colors: [
                              Colors.cyanAccent.shade100,
                              Colors.blue.shade800,
                              Colors.black,
                            ],
                            stops: const [0.0, 0.7, 1.0],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyanAccent.withOpacity(0.7),
                              blurRadius: 30 + glow,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: CustomPaint(painter: _CoreDetailPainter()),
                      ),
                      CustomPaint(
                        size: Size(120 * scale, 120 * scale),
                        painter: _CrossLinePainter(),
                      ),
                      if (_showBootText)
                        Positioned(
                          bottom: 12,
                          child: Text(
                            'BOOTING... DOMINATOR',
                            style: TextStyle(
                              color: Colors.cyanAccent.withOpacity(0.85),
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2.5,
                              fontFamily: 'RobotoMono',
                              shadows: [
                                Shadow(
                                  color: Colors.cyanAccent.withOpacity(0.7),
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//
// 多重リング用ペインター
class _RingPainter extends CustomPainter {
  final Color color;
  final double thickness;
  final double glow;
  _RingPainter({
    required this.color,
    required this.thickness,
    required this.glow,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint =
        Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = thickness
          ..maskFilter = MaskFilter.blur(BlurStyle.normal, glow);
    canvas.drawCircle(size.center(Offset.zero), size.width / 2.2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

// コア中心の細部装飾
class _CoreDetailPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint linePaint =
        Paint()
          ..color = Colors.cyanAccent.withOpacity(0.7)
          ..strokeWidth = 2.2
          ..strokeCap = StrokeCap.round;
    // 縦線
    canvas.drawLine(
      Offset(size.width / 2, size.height * 0.18),
      Offset(size.width / 2, size.height * 0.82),
      linePaint,
    );
    // 横線
    canvas.drawLine(
      Offset(size.width * 0.18, size.height / 2),
      Offset(size.width * 0.82, size.height / 2),
      linePaint,
    );
    // 中心点
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      3.5,
      Paint()
        ..color = Colors.cyanAccent.withOpacity(0.9)
        ..style = PaintingStyle.fill,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

// 十字線・サイバー装飾
class _CrossLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint =
        Paint()
          ..color = Colors.cyanAccent.withOpacity(0.18)
          ..strokeWidth = 1.2;
    // 十字線
    canvas.drawLine(
      Offset(size.width / 2, 0),
      Offset(size.width / 2, size.height),
      paint,
    );
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      paint,
    );
    // 斜め線
    canvas.drawLine(Offset(0, 0), Offset(size.width, size.height), paint);
    canvas.drawLine(Offset(size.width, 0), Offset(0, size.height), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

// サイバーグリッド背景（簡易）
class _GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.cyanAccent.withOpacity(0.08)
          ..strokeWidth = 1;
    for (double x = 0; x < size.width; x += 32) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
    for (double y = 0; y < size.height; y += 32) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
