import 'package:flutter/material.dart';
import 'package:flutter_lyric/lyric_ui/lyric_ui.dart';

///Sample Netease style
///should be extends LyricUI implementation your own UI.
///this property only for change UI,if not demand just only overwrite methods.
class UINetease extends LyricUI {
  TextStyle? defaultStyle;
  TextStyle? defaultExtStyle;
  TextStyle? otherMainStyle;
  double bias;
  double lineGap;
  double inlineGap;
  LyricAlign lyricAlign;
  LyricBaseLine lyricBaseLine;
  Color highlightColor;
  bool highlight;
  HighlightDirection highlightDirection;

  UINetease(
      {this.defaultStyle,
      this.defaultExtStyle,
      this.otherMainStyle,
      this.highlightColor = Colors.amber,
      this.bias = 0.5,
      this.lineGap = 25,
      this.inlineGap = 25,
      this.lyricAlign = LyricAlign.CENTER,
      this.lyricBaseLine = LyricBaseLine.CENTER,
      this.highlight = true,
      this.highlightDirection = HighlightDirection.LTR});

  UINetease.clone(UINetease uiNetease)
      : this(
          defaultStyle: uiNetease.defaultStyle,
          defaultExtStyle: uiNetease.defaultExtStyle,
          otherMainStyle: uiNetease.otherMainStyle,
          bias: uiNetease.bias,
          lineGap: uiNetease.lineGap,
          inlineGap: uiNetease.inlineGap,
          lyricAlign: uiNetease.lyricAlign,
          lyricBaseLine: uiNetease.lyricBaseLine,
          highlight: uiNetease.highlight,
          highlightDirection: uiNetease.highlightDirection,
        );

  @override
  TextStyle getPlayingExtTextStyle() => defaultExtStyle ?? TextStyle(color: Colors.grey[300], fontSize: 18);

  @override
  TextStyle getOtherExtTextStyle() => defaultExtStyle ?? TextStyle(color: Colors.grey[300], fontSize: 18);

  @override
  TextStyle getOtherMainTextStyle() => otherMainStyle ?? TextStyle(color: Colors.grey[200], fontSize: 18);

  @override
  TextStyle getPlayingMainTextStyle() => defaultStyle ?? TextStyle(color: Colors.white, fontSize: 18);

  @override
  double getInlineSpace() => inlineGap;

  @override
  double getLineSpace() => lineGap;

  @override
  double getPlayingLineBias() => bias;

  @override
  LyricAlign getLyricHorizontalAlign() => lyricAlign;

  @override
  LyricBaseLine getBiasBaseLine() => lyricBaseLine;

  @override
  bool enableHighlight() => highlight;

  @override
  HighlightDirection getHighlightDirection() => highlightDirection;

  @override
  Color getLyricHightlightColor() => highlightColor;
}
