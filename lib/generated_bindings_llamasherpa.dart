// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

class NativeLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeLibrary(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  int llamasherpa_process(
    ffi.Pointer<ffi.Char> model_path,
    ffi.Pointer<ffi.Char> _prompt,
    ffi.Pointer<ffi.Char> _antiprompt,
    ffi.Pointer<get_input_cb> get_input,
    ffi.Pointer<show_output_cb> show_output,
  ) {
    return _llamasherpa_process(
      model_path,
      _prompt,
      _antiprompt,
      get_input,
      show_output,
    );
  }

  late final _llamasherpa_processPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<get_input_cb>,
              ffi.Pointer<show_output_cb>)>>('llamasherpa_process');
  late final _llamasherpa_process = _llamasherpa_processPtr.asFunction<
      int Function(
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>,
          ffi.Pointer<get_input_cb>,
          ffi.Pointer<show_output_cb>)>();
}

typedef get_input_cb = ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>;
typedef show_output_cb
    = ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Char>)>;
