import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'teacher_nav_bar_model.dart';
export 'teacher_nav_bar_model.dart';

class TeacherNavBarWidget extends StatefulWidget {
  const TeacherNavBarWidget({
    super.key,
    int? selectedPageIndex,
    bool? hidden,
  })  : selectedPageIndex = selectedPageIndex ?? 1,
        hidden = hidden ?? false;

  final int selectedPageIndex;
  final bool hidden;

  @override
  State<TeacherNavBarWidget> createState() => _TeacherNavBarWidgetState();
}

class _TeacherNavBarWidgetState extends State<TeacherNavBarWidget>
    with TickerProviderStateMixin {
  late TeacherNavBarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeacherNavBarModel());

    animationsMap.addAll({
      'dividerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 422.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
            shape: BoxShape.rectangle,
          ),
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).info,
            ),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Opacity(
                        opacity: widget.selectedPageIndex == 5 ? 1.0 : 0.5,
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 0.0,
                          buttonSize: 50.0,
                          fillColor: Colors.transparent,
                          icon: Icon(
                            Icons.home_outlined,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('TeacherHome');
                          },
                        ),
                      ),
                      if (widget.selectedPageIndex == 5)
                        SizedBox(
                          width: 30.0,
                          child: Divider(
                            height: 2.0,
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['dividerOnPageLoadAnimation1']!),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Opacity(
                        opacity: widget.selectedPageIndex == 6 ? 1.0 : 0.5,
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 0.0,
                          buttonSize: 50.0,
                          fillColor: Colors.transparent,
                          icon: Icon(
                            Icons.menu_book,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('YourModule');
                          },
                        ),
                      ),
                      if (widget.selectedPageIndex == 6)
                        SizedBox(
                          width: 30.0,
                          child: Divider(
                            height: 2.0,
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['dividerOnPageLoadAnimation2']!),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Opacity(
                        opacity: widget.selectedPageIndex == 7 ? 1.0 : 0.5,
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 0.0,
                          buttonSize: 50.0,
                          fillColor: Colors.transparent,
                          icon: Icon(
                            Icons.feed_outlined,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('YourAssessment');
                          },
                        ),
                      ),
                      if (widget.selectedPageIndex == 7)
                        SizedBox(
                          width: 30.0,
                          child: Divider(
                            height: 2.0,
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['dividerOnPageLoadAnimation3']!),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Opacity(
                        opacity: widget.selectedPageIndex == 4 ? 1.0 : 0.5,
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 0.0,
                          buttonSize: 50.0,
                          fillColor: Colors.transparent,
                          icon: Icon(
                            Icons.settings_outlined,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('Settings');
                          },
                        ),
                      ),
                      if (widget.selectedPageIndex == 4)
                        SizedBox(
                          width: 30.0,
                          child: Divider(
                            height: 2.0,
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['dividerOnPageLoadAnimation4']!),
                    ],
                  ),
                ]
                    .divide(const SizedBox(width: 16.0))
                    .addToStart(const SizedBox(width: 16.0))
                    .addToEnd(const SizedBox(width: 16.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}