// ignore: avoid_web_libraries_in_flutter
import 'dart:ui_web' as ui;

import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;

import '../../../../core/constants/app_constants.dart';

class CvViewerContent extends StatefulWidget {
  final String cvUrl;

  const CvViewerContent({
    super.key,
    required this.cvUrl,
  });

  @override
  State<CvViewerContent> createState() => _CvViewerContentState();
}

class _CvViewerContentState extends State<CvViewerContent> {
  static final Set<String> _registeredViewTypes = <String>{};
  late final String _viewType;

  @override
  void initState() {
    super.initState();
    _viewType = 'cv-iframe-view-${widget.cvUrl.hashCode}';
    if (_registeredViewTypes.add(_viewType)) {
      ui.platformViewRegistry.registerViewFactory(_viewType, (int viewId) {
        final iframe = web.HTMLIFrameElement()
          ..src = widget.cvUrl
          ..style.border = 'none'
          ..style.width = '100%'
          ..style.height = '100%'
          ..allowFullscreen = true;
        return iframe;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(AppSizes.cardRadius),
        bottomRight: Radius.circular(AppSizes.cardRadius),
      ),
      child: HtmlElementView(viewType: _viewType),
    );
  }
}
