# Guru Analysis

Developed with 😍 by the Guru team

---

This package provides lint rules for Dart and Flutter which are used internally in guru. For more information, see the [complete list of options][analysis_options_yaml].

**Note**: This package was heavily inspired by [pedantic][pedantic_link].

## Usage

To use the lints, add a dependency in your `pubspec.yaml`:

```yaml
# If you use `package:guru_analysis/guru_analysis.dart`, add a normal dependency.
dependencies:
  guru_analysis: ^1.0.0

# Or, if you just want `analysis_options.yaml`, it can be a dev dependency.
dev_dependencies:
  guru_analysis: ^1.0.0
```

Then, add an include in `analysis_options.yaml`:

```yaml
include: package:guru_analysis/analysis_options.yaml
```

This will ensure you always use the latest version of the lints. If you wish to restrict the lint version, specify a version of `analysis_options.yaml` instead:

```yaml
include: package:guru_analysis/analysis_options.1.0.0.yaml
```

## Suppressing Lints

There may be cases where specific lint rules are undesirable. Lint rules can be suppressed at the line, file, or project level.

An example use case for suppressing lint rules at the file level is suppressing the `prefer_const_constructors` in order to achieve 100% code coverage. This is due to the fact that const constructors are executed before the tests are run, resulting in no coverage collection.

### Project Level

To suppress a specific lint rule for an entire project, modify `analysis_options.yaml`:

```yaml
include: package:guru_analysis/analysis_options.yaml
linter:
  rules:
    public_member_api_docs: false
```
