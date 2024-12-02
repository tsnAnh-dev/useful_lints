library useful_lints;

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/error/error.dart';
import 'package:analyzer/error/listener.dart';
import 'package:collection/collection.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

import 'package:custom_lint_builder/custom_lint_builder.dart';

part 'src/disposable_lints.dart';

// This is the entrypoint of our custom linter
PluginBase createPlugin() => _UsefulLinter();

/// A plugin class is used to list all the assists/src defined by a plugin.
class _UsefulLinter extends PluginBase {
  /// We list all the custom warnings/infos/errors
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        DisposableLintRule(),
      ];
}
