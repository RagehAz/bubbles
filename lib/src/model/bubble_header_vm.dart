part of bubbles;

@immutable
class BubbleHeaderVM {
  /// --------------------------------------------------------------------------
  const BubbleHeaderVM({
    this.headerWidth,
    this.leadingIcon,
    this.leadingIconSizeFactor = 1,
    this.leadingIconBoxColor,
    this.leadingIconIsBubble = false,
    this.onLeadingIconTap,
    this.hasSwitch = false,
    this.hasMoreButton = false,
    this.headlineText,
    this.headlineColor = const Color.fromARGB(255, 255, 255, 255),
    this.switchValue = false,
    this.onSwitchTap,
    this.onMoreButtonTap,
    this.redDot = false,
    this.centered = false,
    this.font,
    this.headlineHighlight,
    this.headlineHeight = 30,
    this.moreButtonIcon = 'packages/bldrs_theme/lib/assets/icons/gi_more.svg',
    this.moreButtonIconSizeFactor = 0.6,
  });
  // -----------------------------------------------------------------------------
  final double headerWidth;
  final dynamic leadingIcon;
  final double leadingIconSizeFactor;
  final Color leadingIconBoxColor;
  final bool leadingIconIsBubble;
  final Function onLeadingIconTap;
  final bool hasSwitch;
  final bool hasMoreButton;
  final String headlineText;
  final Color headlineColor;
  final bool centered;
  final bool switchValue;
  final ValueChanged<bool> onSwitchTap;
  final Function onMoreButtonTap;
  final bool redDot;
  final String font;
  final ValueNotifier<dynamic> headlineHighlight;
  final double headlineHeight;
  final String moreButtonIcon;
  final double moreButtonIconSizeFactor;
  // -----------------------------------------------------------------------------

  /// CONSTANTS

  // --------------------
  static const double leadingIconBoxSize = 30;
  static const double switcherButtonWidth = 50;
  static const double moreButtonSize = leadingIconBoxSize;
  static const double verseBottomMargin = 5;
  // --------------------------------------------------------------------------

  /// CLONING

  // --------------------
  BubbleHeaderVM copyWith({
    double headerWidth,
    dynamic leadingIcon,
    double leadingIconSizeFactor,
    Color leadingIconBoxColor,
    bool leadingIconIsBubble,
    bool hasSwitch,
    bool hasMoreButton,
    String headlineText,
    Color headlineColor,
    bool switchValue,
    ValueChanged<bool> onSwitchTap,
    Function onMoreButtonTap,
    bool redDot,
    Function onLeadingIconTap,
    bool centered,
    String font,
    ValueNotifier<dynamic> headlineHighlight,
    double headlineHeight,
    String moreButtonIcon,
    double moreButtonIconSizeFactor,
  }){
    return BubbleHeaderVM(
      headerWidth: headerWidth ?? this.headerWidth,
      leadingIcon: leadingIcon ?? this.leadingIcon,
      leadingIconSizeFactor: leadingIconSizeFactor ?? this.leadingIconSizeFactor,
      leadingIconBoxColor: leadingIconBoxColor ?? this.leadingIconBoxColor,
      leadingIconIsBubble: leadingIconIsBubble ?? this.leadingIconIsBubble,
      hasSwitch: hasSwitch ?? this.hasSwitch,
      hasMoreButton: hasMoreButton ?? this.hasMoreButton,
      headlineText: headlineText ?? this.headlineText,
      headlineColor: headlineColor ?? this.headlineColor,
      switchValue: switchValue ?? this.switchValue,
      onSwitchTap: onSwitchTap ?? this.onSwitchTap,
      onMoreButtonTap: onMoreButtonTap ?? this.onMoreButtonTap,
      redDot: redDot ?? this.redDot,
      onLeadingIconTap: onLeadingIconTap ?? this.onLeadingIconTap,
      centered: centered ?? this.centered,
      font: font ?? this.font,
      headlineHighlight: headlineHighlight ?? this.headlineHighlight,
      headlineHeight: headlineHeight ?? this.headlineHeight,
      moreButtonIcon: moreButtonIcon ?? this.moreButtonIcon,
      moreButtonIconSizeFactor: moreButtonIconSizeFactor ?? this.moreButtonIconSizeFactor,
    );
  }
  // -----------------------------------------------------------------------------

  /// GETTERS

  // --------------------
  /// TESTED : WORKS PERFECT
  static double getBubbleHeaderHeight(){
    return leadingIconBoxSize + verseBottomMargin; // verse bottom margin
  }
  // -----------------------------------------------------------------------------

  /// EQUALITY

  // --------------------
  /// TASK : TEST ME
  static bool bubbleHeaderViewModelsAreIdentical({
    @required BubbleHeaderVM model1,
    @required BubbleHeaderVM model2,
  }){
    bool _identical = false;

    if (model1 == null && model2 == null){
      _identical = true;
    }

    else if (model1 != null && model2 != null){

      if (
      model1.headerWidth == model2.headerWidth &&
          model1.leadingIcon == model2.leadingIcon &&
          model1.leadingIconSizeFactor == model2.leadingIconSizeFactor &&
          model1.leadingIconBoxColor == model2.leadingIconBoxColor &&
          model1.leadingIconIsBubble == model2.leadingIconIsBubble &&
          model1.hasSwitch == model2.hasSwitch &&
          model1.hasMoreButton == model2.hasMoreButton &&
          model1.headlineText == model2.headlineText &&
          model1.headlineColor == model2.headlineColor &&
          model1.switchValue == model2.switchValue &&
          model1.redDot == model2.redDot &&
          model1.centered == model2.centered &&
          model1.font == model2.font &&
          model1.headlineHeight == model2.headlineHeight &&
          model1.moreButtonIcon == model2.moreButtonIcon &&
          model1.moreButtonIconSizeFactor == model2.moreButtonIconSizeFactor &&
          model1.headlineHighlight == model2.headlineHighlight
      // ValueChanged<bool> onSwitchTap
      // Function onMoreButtonTap
      // Function onLeadingIconTap
      ){
        _identical = true;
      }

    }

    return _identical;
  }
  // -----------------------------------------------------------------------------

  /// OVERRIDES

  // --------------------
  /*
   @override
   String toString() => 'MapModel(key: $key, value: ${value.toString()})';
   */
  // --------------------
  @override
  bool operator == (Object other){

    if (identical(this, other)) {
      return true;
    }

    bool _areIdentical = false;
    if (other is BubbleHeaderVM){
      _areIdentical = bubbleHeaderViewModelsAreIdentical(
        model1: this,
        model2: other,
      );
    }

    return _areIdentical;
  }
  // --------------------
  @override
  int get hashCode =>
      headerWidth.hashCode^
      leadingIcon.hashCode^
      leadingIconSizeFactor.hashCode^
      leadingIconBoxColor.hashCode^
      leadingIconIsBubble.hashCode^
      onLeadingIconTap.hashCode^
      hasSwitch.hashCode^
      hasMoreButton.hashCode^
      headlineText.hashCode^
      headlineColor.hashCode^
      switchValue.hashCode^
      onSwitchTap.hashCode^
      onMoreButtonTap.hashCode^
      redDot.hashCode^
      centered.hashCode^
      font.hashCode^
      headlineHighlight.hashCode^
      headlineHeight.hashCode^
      moreButtonIcon.hashCode^
      moreButtonIconSizeFactor.hashCode;
  // -----------------------------------------------------------------------------
}
