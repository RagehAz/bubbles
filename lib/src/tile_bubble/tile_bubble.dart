part of bubbles;

// class TileBubble extends StatelessWidget {
//   /// --------------------------------------------------------------------------
//   const TileBubble({
//     this.bubbleHeaderVM,
//     this.bubbleWidth,
//     this.verseColor = Colorz.white255,
//     this.onTileTap,
//     this.secondLineVerse,
//     this.iconIsBubble = true,
//     this.insideDialog = false,
//     this.moreBtOnTap,
//     this.child,
//     this.bulletPoints,
//     this.bubbleColor = Colorz.white10,
//     this.validator,
//     this.autoValidate = true,
//     Key key,
//   }) : super(key: key);
//   /// --------------------------------------------------------------------------
//   final double bubbleWidth;
//   final BubbleHeaderVM bubbleHeaderVM;
//   final Color verseColor;
//   final Function onTileTap;
//   final Verse secondLineVerse;
//   final bool iconIsBubble;
//   final bool insideDialog;
//   final Function moreBtOnTap;
//   final Widget child;
//   final List<Verse> bulletPoints;
//   final Color bubbleColor;
//   final String Function() validator;
//   final bool autoValidate;
//   /// --------------------------------------------------------------------------
//   static const double iconBoxWidth = 30; /// delete me 5alas (im in BubbleHeader class)
//   /// --------------------------------------------------------------------------
//   static double getBubbleWidth({
//     @required BuildContext context,
//     double bubbleWidthOverride,
//   }){
//     final double _bubbleWidth = bubbleWidthOverride ?? BldrsAppBar.width(context);
//     return _bubbleWidth;
//   }
//   // --------------------
//   static double childWidth({
//     @required BuildContext context,
//     double bubbleWidthOverride,
//   }) {
//
//     final double _bubbleWidth = getBubbleWidth(
//       context: context,
//       bubbleWidthOverride: bubbleWidthOverride,
//     );
//
//     return _bubbleWidth - iconBoxWidth - (2 * Ratioz.appBarMargin);
//   }
//   // -----------------------------------------------------------------------------
//   @override
//   Widget build(BuildContext context) {
//
//     final double _bubbleWidth = getBubbleWidth(
//       context: context,
//       bubbleWidthOverride: bubbleWidth,
//     );
//     final double _clearWidth = Bubble.clearWidth(context, bubbleWidthOverride: _bubbleWidth);
//
//     return Bubble(
//       bubbleHeaderVM: const BubbleHeaderVM(),
//       width: _bubbleWidth,
//       onBubbleTap: onTileTap,
//       bubbleColor: Formers.validatorBubbleColor(
//         // canErrorize: true,
//         defaultColor: bubbleColor,
//         validator: validator,
//       ),
//       columnChildren: <Widget>[
//
//         /// BUBBLE HEADER
//         if (bubbleHeaderVM != null)
//         BubbleHeader(
//           viewModel: bubbleHeaderVM.bake().copyWith(
//             headerWidth: _clearWidth,
//           ),
//         ),
//
//         /// BULLET POINTS
//         Padding(
//           padding: Scale.superInsets(
//             context: context,
//             appIsLTR: UiProvider.checkAppIsLeftToRight(context),
//             enLeft: iconBoxWidth,
//           ),
//           child: BulletPoints(
//             bulletPoints: bulletPoints,
//           ),
//         ),
//
//         /// SECOND LINE
//         if (secondLineVerse != null)
//           SizedBox(
//             width: Bubble.bubbleWidth(context),
//             child: Row(
//               children: <Widget>[
//
//                 /// UNDER LEADING ICON AREA
//                 const SizedBox(
//                   width: iconBoxWidth,
//                 ),
//
//                 /// SECOND LINE
//                 SizedBox(
//                   width: childWidth(
//                     context: context,
//                     bubbleWidthOverride: _bubbleWidth,
//                   ),
//                   child: SuperVerse(
//                     verse: secondLineVerse,
//                     color: Colorz.white200,
//                     // scaleFactor: 1,
//                     italic: true,
//                     maxLines: 100,
//                     centered: false,
//                     weight: VerseWeight.thin,
//                     margin: 5,
//                   ),
//                 ),
//
//               ],
//             ),
//           ),
//
//         /// CHILD
//         if (child != null)
//           SizedBox(
//             width: _bubbleWidth,
//             // height: 200,
//             // padding: const EdgeInsets.symmetric(horizontal: 5),
//             // color: Colorz.Yellow255,
//             child: Row(
//               // mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//
//                 /// UNDER LEADING ICON AREA
//                 const SizedBox(
//                   width: iconBoxWidth,
//                 ),
//
//                 /// CHILD
//                 Container(
//                   width: childWidth(context: context, bubbleWidthOverride: _bubbleWidth),
//                   // decoration: BoxDecoration(
//                   //     color: Colorz.white10,
//                   //     borderRadius: Borderers.superBorderAll(context, Bubble.clearCornersValue)
//                   // ),
//                   alignment: Alignment.center,
//                   child: child,
//                 ),
//
//               ],
//             ),
//           ),
//
//         if (validator != null)
//           BldrsValidator(
//             width: _clearWidth,
//             validator: validator,
//             autoValidate: autoValidate,
//           ),
//
//       ],
//     );
//
//   }
//   // -----------------------------------------------------------------------------
// }
