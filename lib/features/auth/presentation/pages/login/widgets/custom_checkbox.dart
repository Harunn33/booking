part of '../login_screen.dart';

class _CustomCheckbox extends ConsumerStatefulWidget {
  const _CustomCheckbox();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      __CustomCheckboxState();
}

class __CustomCheckboxState extends ConsumerState<_CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authProvider);
    final notifier = ref.read(authProvider.notifier);
    final appStrings = AppStrings.instance;
    return Row(
      children: [
        Checkbox(
          visualDensity: VisualDensity.compact,
          value: state.isRememberMe,
          side: BorderSide(
            width: 2.w,
            color: AppColors.instance.majorelleBlue,
          ),
          fillColor: WidgetStateColor.resolveWith(
            (states) => states.contains(WidgetState.selected)
                ? AppColors.instance.majorelleBlue
                : AppColors.instance.white,
          ),
          onChanged: notifier.onChanged,
        ),
        Text(
          appStrings.rememberMe,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
