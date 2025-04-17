import 'package:flutter/material.dart';

class DayNavigator extends StatefulWidget {
  final DateTime initialDate;
  final Color? color;
  final void Function(DateTime)? onDateChanged;

  const DayNavigator({
    super.key,
    required this.initialDate,
    this.onDateChanged,
    this.color,
  });

  @override
  State<DayNavigator> createState() => _DayNavigatorState();
}

class _DayNavigatorState extends State<DayNavigator> {
  late DateTime _focusedDay;
  final Color defaultColor = Colors.blue;

  @override
  void initState() {
    super.initState();
    _focusedDay = widget.initialDate;
  }

  void _changeDay(int offset) {
    setState(() {
      _focusedDay = _focusedDay.add(Duration(days: offset));
      widget.onDateChanged?.call(_focusedDay);
    });
  }

  String _getMonthName(int month) {
    const months = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];
    return months[month - 1]; // Month is 1-based (1 = January)
  }

  String _formatDate(DateTime date) {
    String monthName = _getMonthName(date.month);
    return '$monthName ${date.day}';
  }

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _focusedDay,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != _focusedDay) {
      setState(() {
        _focusedDay = picked;
        widget.onDateChanged?.call(_focusedDay);
      });
    }
  }

  double _iconSize(double height) => height * 0.043;
  double _textSize(double width) => width * 0.045;

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: _iconSize(h),
              color: widget.color ?? defaultColor,
            ),
            onPressed: () => _changeDay(-1),
          ),
          GestureDetector(
            onTap: () => _pickDate(),
            child: Row(
              children: [
                Text(
                  _formatDate(_focusedDay), // Use formatted date here
                  style: TextStyle(
                      fontSize: _textSize(w),
                      fontWeight: FontWeight.bold,
                      color: widget.color ?? defaultColor),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: widget.color ?? Colors.black,
                )
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.chevron_right,
              size: _iconSize(h),
              color: widget.color ?? defaultColor,
            ),
            onPressed: () => _changeDay(1),
          ),
        ],
      ),
    );
  }
}
