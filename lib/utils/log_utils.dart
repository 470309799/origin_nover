import 'package:logger/logger.dart';

class LogUtils {
  static final Logger _logger = Logger(
    level: Level.debug,
    printer: PrettyPrinter(
      methodCount: 2,
      // 要显示的方法数
      errorMethodCount: 8,
      // 要显示的错误方法数
      lineLength: 120,
      // 每行的最大长度
      colors: true,
      // 是否显示颜色
      printEmojis: true,
      // 是否显示表情符号
      printTime: true, // 是否显示时间
    ),
  );

  /// Trace 日志
  /// [message] 日志内容
  static void t(dynamic message, {Object? error, StackTrace? stackTrace}) {
    _logger.t(message, error: error, stackTrace: stackTrace);
  }

  /// debug 日志
  /// [message] 日志内容
  static void d(dynamic message, {Object? error, StackTrace? stackTrace}) {
    _logger.d(message, error: error, stackTrace: stackTrace);
  }

  /// error 日志
  /// [message] 日志内容
  static void e(dynamic message, {Object? error, StackTrace? stackTrace}) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  /// info 日志
  /// [message] 日志内容
  static void i(dynamic message, {Object? error, StackTrace? stackTrace}) {
    _logger.i(message, error: error, stackTrace: stackTrace);
  }

  /// warning 日志
  /// [message] 日志内容
  static void w(dynamic message, {Object? error, StackTrace? stackTrace}) {
    _logger.w(message, error: error, stackTrace: stackTrace);
  }

  /// fatal 日志
  /// [message] 日志内容
  static void f(dynamic message, Object error, StackTrace stackTrace) {
    _logger.f(message, error: error, stackTrace: stackTrace);
  }
}
