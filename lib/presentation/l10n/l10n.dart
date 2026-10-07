import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe/domain/models/bot_level.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';
import 'package:tic_tac_toe/presentation/l10n/generated/app_localizations.dart';

export 'package:tic_tac_toe/presentation/l10n/generated/app_localizations.dart';

extension AppLocalizationsContext on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}

/// Typed access to messages using ICU `select` on domain enums.
extension AppLocalizationsDomain on AppLocalizations {
  String botLevelLabel(BotLevel level) => botLevel(level.name);

  String markPickerOptionLabel(Mark mark) => markPickerOption(mark.name);

  /// [index] is the 0-based cell index; labels are numbered from 1.
  String cellLabel(int index, Mark? mark) => mark == null ? cellEmpty(index + 1) : cellMarked(mark.name, index + 1);
}
