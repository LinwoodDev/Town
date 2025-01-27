// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.1.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/luau.dart';
import 'api/simple.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'frb_generated.io.dart'
    if (dart.library.js_interop) 'frb_generated.web.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

/// Main entrypoint of the Rust API
class RustLib extends BaseEntrypoint<RustLibApi, RustLibApiImpl, RustLibWire> {
  @internal
  static final instance = RustLib._();

  RustLib._();

  /// Initialize flutter_rust_bridge
  static Future<void> init({
    RustLibApi? api,
    BaseHandler? handler,
    ExternalLibrary? externalLibrary,
  }) async {
    await instance.initImpl(
      api: api,
      handler: handler,
      externalLibrary: externalLibrary,
    );
  }

  /// Initialize flutter_rust_bridge in mock mode.
  /// No libraries for FFI are loaded.
  static void initMock({
    required RustLibApi api,
  }) {
    instance.initMockImpl(
      api: api,
    );
  }

  /// Dispose flutter_rust_bridge
  ///
  /// The call to this function is optional, since flutter_rust_bridge (and everything else)
  /// is automatically disposed when the app stops.
  static void dispose() => instance.disposeImpl();

  @override
  ApiImplConstructor<RustLibApiImpl, RustLibWire> get apiImplConstructor =>
      RustLibApiImpl.new;

  @override
  WireConstructor<RustLibWire> get wireConstructor =>
      RustLibWire.fromExternalLibrary;

  @override
  Future<void> executeRustInitializers() async {}

  @override
  ExternalLibraryLoaderConfig get defaultExternalLibraryLoaderConfig =>
      kDefaultExternalLibraryLoaderConfig;

  @override
  String get codegenVersion => '2.7.1';

  @override
  int get rustContentHash => 37518573;

  static const kDefaultExternalLibraryLoaderConfig =
      ExternalLibraryLoaderConfig(
    stem: 'setonix_plugin',
    ioDirectory: 'rust/target/release/',
    webPrefix: 'pkg/',
  );
}

abstract class RustLibApi extends BaseApi {
  LuauPlugin crateApiLuauLuauPluginNew(
      {required String code, required PluginCallback callback});

  Future<void> crateApiLuauLuauPluginRun({required LuauPlugin that});

  Future<void> crateApiLuauPluginCallbackChangeOnPrint(
      {required PluginCallback that,
      required FutureOr<void> Function(String) onPrint});

  Future<PluginCallback> crateApiLuauPluginCallbackDefault();

  Future<int> crateApiSimpleSimpleAdderTwinNormal(
      {required int a, required int b});

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_LuauPlugin;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_LuauPlugin;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_LuauPluginPtr;

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_PluginCallback;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_PluginCallback;

  CrossPlatformFinalizerArg
      get rust_arc_decrement_strong_count_PluginCallbackPtr;
}

class RustLibApiImpl extends RustLibApiImplPlatform implements RustLibApi {
  RustLibApiImpl({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @override
  LuauPlugin crateApiLuauLuauPluginNew(
      {required String code, required PluginCallback callback}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(code, serializer);
        sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
            callback, serializer);
        return pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 1)!;
      },
      codec: SseCodec(
        decodeSuccessData:
            sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kCrateApiLuauLuauPluginNewConstMeta,
      argValues: [code, callback],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiLuauLuauPluginNewConstMeta => const TaskConstMeta(
        debugName: "LuauPlugin_new",
        argNames: ["code", "callback"],
      );

  @override
  Future<void> crateApiLuauLuauPluginRun({required LuauPlugin that}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
            that, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 2, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kCrateApiLuauLuauPluginRunConstMeta,
      argValues: [that],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiLuauLuauPluginRunConstMeta => const TaskConstMeta(
        debugName: "LuauPlugin_run",
        argNames: ["that"],
      );

  @override
  Future<void> crateApiLuauPluginCallbackChangeOnPrint(
      {required PluginCallback that,
      required FutureOr<void> Function(String) onPrint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
            that, serializer);
        sse_encode_DartFn_Inputs_String_Output_unit_AnyhowException(
            onPrint, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 3, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiLuauPluginCallbackChangeOnPrintConstMeta,
      argValues: [that, onPrint],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiLuauPluginCallbackChangeOnPrintConstMeta =>
      const TaskConstMeta(
        debugName: "PluginCallback_change_on_print",
        argNames: ["that", "onPrint"],
      );

  @override
  Future<PluginCallback> crateApiLuauPluginCallbackDefault() {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 4, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData:
            sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiLuauPluginCallbackDefaultConstMeta,
      argValues: [],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiLuauPluginCallbackDefaultConstMeta =>
      const TaskConstMeta(
        debugName: "PluginCallback_default",
        argNames: [],
      );

  @override
  Future<int> crateApiSimpleSimpleAdderTwinNormal(
      {required int a, required int b}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_i_32(a, serializer);
        sse_encode_i_32(b, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 5, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_i_32,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSimpleSimpleAdderTwinNormalConstMeta,
      argValues: [a, b],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSimpleSimpleAdderTwinNormalConstMeta =>
      const TaskConstMeta(
        debugName: "simple_adder_twin_normal",
        argNames: ["a", "b"],
      );

  Future<void> Function(int, dynamic)
      encode_DartFn_Inputs_String_Output_unit_AnyhowException(
          FutureOr<void> Function(String) raw) {
    return (callId, rawArg0) async {
      final arg0 = dco_decode_String(rawArg0);

      Box<void>? rawOutput;
      Box<AnyhowException>? rawError;
      try {
        rawOutput = Box(await raw(arg0));
      } catch (e, s) {
        rawError = Box(AnyhowException("$e\n\n$s"));
      }

      final serializer = SseSerializer(generalizedFrbRustBinding);
      assert((rawOutput != null) ^ (rawError != null));
      if (rawOutput != null) {
        serializer.buffer.putUint8(0);
        sse_encode_unit(rawOutput.value, serializer);
      } else {
        serializer.buffer.putUint8(1);
        sse_encode_AnyhowException(rawError!.value, serializer);
      }
      final output = serializer.intoRaw();

      generalizedFrbRustBinding.dartFnDeliverOutput(
          callId: callId,
          ptr: output.ptr,
          rustVecLen: output.rustVecLen,
          dataLen: output.dataLen);
    };
  }

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_LuauPlugin => wire
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_LuauPlugin => wire
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin;

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_PluginCallback => wire
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_PluginCallback => wire
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback;

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return AnyhowException(raw as String);
  }

  @protected
  LuauPlugin
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return LuauPluginImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  PluginCallback
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return PluginCallbackImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  PluginCallback
      dco_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return PluginCallbackImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  LuauPlugin
      dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return LuauPluginImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  FutureOr<void> Function(String)
      dco_decode_DartFn_Inputs_String_Output_unit_AnyhowException(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    throw UnimplementedError('');
  }

  @protected
  Object dco_decode_DartOpaque(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return decodeDartOpaque(raw, generalizedFrbRustBinding);
  }

  @protected
  LuauPlugin
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return LuauPluginImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  PluginCallback
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return PluginCallbackImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  String dco_decode_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as String;
  }

  @protected
  int dco_decode_i_32(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  PlatformInt64 dco_decode_isize(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dcoDecodeI64(raw);
  }

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as Uint8List;
  }

  @protected
  int dco_decode_u_8(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  void dco_decode_unit(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return;
  }

  @protected
  BigInt dco_decode_usize(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dcoDecodeU64(raw);
  }

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_String(deserializer);
    return AnyhowException(inner);
  }

  @protected
  LuauPlugin
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return LuauPluginImpl.frbInternalSseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  PluginCallback
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return PluginCallbackImpl.frbInternalSseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  PluginCallback
      sse_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return PluginCallbackImpl.frbInternalSseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  LuauPlugin
      sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return LuauPluginImpl.frbInternalSseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  Object sse_decode_DartOpaque(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_isize(deserializer);
    return decodeDartOpaque(inner, generalizedFrbRustBinding);
  }

  @protected
  LuauPlugin
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return LuauPluginImpl.frbInternalSseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  PluginCallback
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return PluginCallbackImpl.frbInternalSseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  String sse_decode_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_list_prim_u_8_strict(deserializer);
    return utf8.decoder.convert(inner);
  }

  @protected
  int sse_decode_i_32(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getInt32();
  }

  @protected
  PlatformInt64 sse_decode_isize(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getPlatformInt64();
  }

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var len_ = sse_decode_i_32(deserializer);
    return deserializer.buffer.getUint8List(len_);
  }

  @protected
  int sse_decode_u_8(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8();
  }

  @protected
  void sse_decode_unit(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  BigInt sse_decode_usize(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getBigUint64();
  }

  @protected
  bool sse_decode_bool(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8() != 0;
  }

  @protected
  void sse_encode_AnyhowException(
      AnyhowException self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_String(self.message, serializer);
  }

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          LuauPlugin self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(
        (self as LuauPluginImpl).frbInternalSseEncode(move: true), serializer);
  }

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          PluginCallback self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(
        (self as PluginCallbackImpl).frbInternalSseEncode(move: true),
        serializer);
  }

  @protected
  void
      sse_encode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          PluginCallback self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(
        (self as PluginCallbackImpl).frbInternalSseEncode(move: false),
        serializer);
  }

  @protected
  void
      sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          LuauPlugin self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(
        (self as LuauPluginImpl).frbInternalSseEncode(move: false), serializer);
  }

  @protected
  void sse_encode_DartFn_Inputs_String_Output_unit_AnyhowException(
      FutureOr<void> Function(String) self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_DartOpaque(
        encode_DartFn_Inputs_String_Output_unit_AnyhowException(self),
        serializer);
  }

  @protected
  void sse_encode_DartOpaque(Object self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_isize(
        PlatformPointerUtil.ptrToPlatformInt64(encodeDartOpaque(
            self, portManager.dartHandlerPort, generalizedFrbRustBinding)),
        serializer);
  }

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerLuauPlugin(
          LuauPlugin self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(
        (self as LuauPluginImpl).frbInternalSseEncode(move: null), serializer);
  }

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPluginCallback(
          PluginCallback self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(
        (self as PluginCallbackImpl).frbInternalSseEncode(move: null),
        serializer);
  }

  @protected
  void sse_encode_String(String self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_list_prim_u_8_strict(utf8.encoder.convert(self), serializer);
  }

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putInt32(self);
  }

  @protected
  void sse_encode_isize(PlatformInt64 self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putPlatformInt64(self);
  }

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    serializer.buffer.putUint8List(self);
  }

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self);
  }

  @protected
  void sse_encode_unit(void self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  void sse_encode_usize(BigInt self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putBigUint64(self);
  }

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self ? 1 : 0);
  }
}

@sealed
class LuauPluginImpl extends RustOpaque implements LuauPlugin {
  // Not to be used by end users
  LuauPluginImpl.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  LuauPluginImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_LuauPlugin,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_LuauPlugin,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_LuauPluginPtr,
  );

  Future<void> run() => RustLib.instance.api.crateApiLuauLuauPluginRun(
        that: this,
      );
}

@sealed
class PluginCallbackImpl extends RustOpaque implements PluginCallback {
  // Not to be used by end users
  PluginCallbackImpl.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  PluginCallbackImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_PluginCallback,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_PluginCallback,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_PluginCallbackPtr,
  );

  Future<void> changeOnPrint(
          {required FutureOr<void> Function(String) onPrint}) =>
      RustLib.instance.api.crateApiLuauPluginCallbackChangeOnPrint(
          that: this, onPrint: onPrint);
}
