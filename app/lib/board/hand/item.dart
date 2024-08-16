import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart'
    show
        AdaptiveTextSelectionToolbar,
        BuildContext,
        ContextMenuButtonItem,
        TextSelectionToolbarAnchors;
import 'package:flutter/painting.dart';
import 'package:quokka/bloc/world.dart';
import 'package:quokka/bloc/world_state.dart';
import 'package:quokka/board/game.dart';
import 'package:quokka/board/hand/view.dart';
import 'package:quokka/helpers/asset.dart';
import 'package:quokka/helpers/secondary.dart';
import 'package:quokka/helpers/drag.dart';

abstract class HandItemDropZone extends PositionComponent {
  HandItemDropZone({super.size, super.position});
}

abstract class HandItem<T> extends HandItemDropZone
    with
        HasGameRef<BoardGame>,
        DragCallbacks,
        TapCallbacks,
        LongDragCallbacks,
        DoubleTapCallbacks,
        SecondaryTapCallbacks,
        DetailsTapCallbacks,
        FlameBlocListenable<WorldBloc, WorldState> {
  final T item;
  late final SpriteComponent _sprite;
  late final TextComponent<TextPaint> _label;
  Vector2 _lastPos = Vector2.zero();

  HandItem({required this.item}) : super(size: Vector2(100, 0));

  GameHand get hand => findParent<GameHand>()!;

  String get label;

  Future<Sprite?> loadIcon();

  AssetManager get assetManager => game.assetManager;

  double get labelHeight => 20;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    _sprite = SpriteComponent(
      position: Vector2(0, labelHeight),
      size: Vector2(100, 0),
      sprite: await loadIcon(),
    );
    add(_sprite);
  }

  @override
  bool listenWhen(WorldState previousState, WorldState newState) =>
      previousState.colorScheme != newState.colorScheme;

  @override
  void onInitialState(WorldState state) {
    add(_label = TextComponent(
        text: label,
        size: Vector2(0, labelHeight),
        position: Vector2(50, 0),
        anchor: Anchor.topCenter,
        textRenderer: _buildPaint(state)));
  }

  _buildPaint(WorldState state) => TextPaint(
        style: TextStyle(fontSize: 14, color: state.colorScheme.onSurface),
      );

  @override
  void onNewState(WorldState state) {
    _label.textRenderer = _buildPaint(state);
  }

  @override
  void onParentResize(Vector2 maxSize) {
    height = maxSize.y;
    _sprite.height = height - labelHeight;
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    super.onDragUpdate(event);
    if (!(isMouseOrLongPressing ?? false)) {
      hand.scroll(event.localDelta.x);
      return;
    }
    _lastPos = event.canvasEndPosition;
  }

  @override
  void onDragEnd(DragEndEvent event) {
    super.onDragEnd(event);
    if (!(isMouseOrLongPressing ?? true)) return;
    final zone = game
        .componentsAtPoint(_lastPos)
        .whereType<HandItemDropZone>()
        .firstOrNull;
    if (zone != null) moveItem(zone);
  }

  @override
  void onContextMenu(Vector2 position) {
    final items = contextItemsBuilder;
    if (items == null) return;
    game.showContextMenu(
      contextMenuBuilder: (context, onClose) =>
          AdaptiveTextSelectionToolbar.buttonItems(
        anchors:
            TextSelectionToolbarAnchors(primaryAnchor: position.toOffset()),
        buttonItems: items(context, onClose),
      ),
    );
  }

  List<ContextMenuButtonItem> Function(BuildContext, VoidCallback onClose)?
      contextItemsBuilder;

  void moveItem(HandItemDropZone zone) {}
}
