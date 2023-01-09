import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  void onCurrent() {}

  void onList() {}

  void onSettings() {}

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            SideItem(
              onTap: onCurrent,
              icon: Icons.laptop,
              text: '当前设备',
            ),
            SideItem(
              onTap: onList,
              icon: Icons.list,
              text: '所有设备',
            ),
            SideItem(
              onTap: onSettings,
              icon: Icons.settings,
              text: '设置',
            )
          ],
        ));
  }
}

class SideItem extends StatefulWidget {
  const SideItem(
      {super.key, this.onTap, this.icon = Icons.abc, this.text = '暂未设置'});

  final VoidCallback? onTap;
  final IconData icon;
  final String text;

  @override
  State<SideItem> createState() => _SideItemState();
}

class _SideItemState extends State<SideItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onTap,
      hoverColor: Colors.grey,
      leading: Icon(widget.icon),
      title: Text(widget.text),
      minLeadingWidth: 5,
    );
  }
}
