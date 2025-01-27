// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.1.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

// Static analysis wrongly picks the IO variant, thus ignore this
// ignore_for_file: argument_type_not_assignable

import 'api/luau.dart';
import 'api/simple.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_LuauPluginPtr =>
      wire.rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin;

  CrossPlatformFinalizerArg
      get rust_arc_decrement_strong_count_PluginCallbackPtr => wire
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback;

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw);

  @protected
  LuauPlugin
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          dynamic raw);

  @protected
  PluginCallback
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          dynamic raw);

  @protected
  PluginCallback
      dco_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          dynamic raw);

  @protected
  LuauPlugin
      dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          dynamic raw);

  @protected
  FutureOr<void> Function(String)
      dco_decode_DartFn_Inputs_String_Output_unit_AnyhowException(dynamic raw);

  @protected
  Object dco_decode_DartOpaque(dynamic raw);

  @protected
  LuauPlugin
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          dynamic raw);

  @protected
  PluginCallback
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          dynamic raw);

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  PlatformInt64 dco_decode_isize(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  BigInt dco_decode_usize(dynamic raw);

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer);

  @protected
  LuauPlugin
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          SseDeserializer deserializer);

  @protected
  PluginCallback
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          SseDeserializer deserializer);

  @protected
  PluginCallback
      sse_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          SseDeserializer deserializer);

  @protected
  LuauPlugin
      sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          SseDeserializer deserializer);

  @protected
  Object sse_decode_DartOpaque(SseDeserializer deserializer);

  @protected
  LuauPlugin
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          SseDeserializer deserializer);

  @protected
  PluginCallback
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          SseDeserializer deserializer);

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  PlatformInt64 sse_decode_isize(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  BigInt sse_decode_usize(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  void sse_encode_AnyhowException(
      AnyhowException self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          LuauPlugin self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          PluginCallback self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          PluginCallback self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          LuauPlugin self, SseSerializer serializer);

  @protected
  void sse_encode_DartFn_Inputs_String_Output_unit_AnyhowException(
      FutureOr<void> Function(String) self, SseSerializer serializer);

  @protected
  void sse_encode_DartOpaque(Object self, SseSerializer serializer);

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          LuauPlugin self, SseSerializer serializer);

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          PluginCallback self, SseSerializer serializer);

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_isize(PlatformInt64 self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_usize(BigInt self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire implements BaseWire {
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);

  void rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          int ptr) =>
      wasmModule
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
              ptr);

  void rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          int ptr) =>
      wasmModule
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
              ptr);

  void rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          int ptr) =>
      wasmModule
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
              ptr);

  void rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          int ptr) =>
      wasmModule
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
              ptr);
}

@JS('wasm_bindgen')
external RustLibWasmModule get wasmModule;

@JS()
@anonymous
extension type RustLibWasmModule._(JSObject _) implements JSObject {
  external void
      rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          int ptr);

  external void
      rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          int ptr);

  external void
      rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          int ptr);

  external void
      rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          int ptr);
}
