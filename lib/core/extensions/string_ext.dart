import 'package:flutter/material.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';

extension StringExt on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String getLocalizedCategoryFilter(
    BuildContext context,
  ) {
    switch (this) {
      case 'All':
        return context.l10n.all;
      case 'Best Seller':
        return context.l10n.bestSeller;
      case 'Classics':
        return context.l10n.classics;
      case 'Children':
        return context.l10n.children;
      case 'Philosophy':
        return context.l10n.philosophy;
      default:
        return '';
    }
  }
}
