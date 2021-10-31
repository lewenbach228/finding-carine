// ignore_for_file: constant_identifier_names

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

List<String> fillsourceArray() {
  return [
    'images/a.png',
    'images/a.png',
    'images/b.png',
    'images/b.png',
    'images/c.png',
    'images/c.png',
    'images/d.png',
    'images/d.png',
    'images/e.png',
    'images/e.png',
    'images/f.png',
    'images/f.png',
    'images/g.png',
    'images/g.png',
    'images/h.png',
    'images/h.png',
    'images/i.png',
    'images/i.png',
  ];
}

enum Level {
  DIFFICILE,
  // ignore: constant_identifier_names
  MOYENNE,
  FACILE,
}

List getSourceArray(Level level) {
  List<String> levellist = <String>[];
  List sourceArray = fillsourceArray();
  if (level == Level.DIFFICILE) {
    for (var element in sourceArray) {
      levellist.add(element);
    }
  } else if (level == Level.MOYENNE) {
    for (int i = 0; i < 0; i++) {
      levellist.add(sourceArray[i]);
    }
  }
  levellist.shuffle();
  return levellist;
}

List<bool> getInitialitemStata(Level level) {
  List<bool> initialitemstate = <bool>[];
  if (level == Level.DIFFICILE) {
    for (int i = 0; i < 18; i++) {
      initialitemstate.add(true);
    }
  } else if (level == Level.MOYENNE) {
    for (int i = 0; i < 18; i++) {
      initialitemstate.add(true);
    }
  } else if (level == Level.FACILE) {
    for (int i = 0; i < 18; i++) {
      initialitemstate.add(true);
    }
  }
  return initialitemstate;
}

List<GlobalKey<FlipCardState>> getCardStateKeys(Level level) {
  List<GlobalKey<FlipCardState>> cardstateKeys = <GlobalKey<FlipCardState>>[];
  if (level == Level.DIFFICILE) {
    for (int i = 0; i < 18; i++) {
      cardstateKeys.add(GlobalKey<FlipCardState>());
    }
  } else if (level == Level.MOYENNE) {
    for (int i = 0; i < 12; i++) {
      cardstateKeys.add(GlobalKey<FlipCardState>());
    }
  } else if (level == Level.FACILE) {
    for (int i = 0; i < 8; i++) {
      cardstateKeys.add(GlobalKey<FlipCardState>());
    }
  }
  return cardstateKeys;
}
