import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sidebarx/sidebarx.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101010),
      body: Row(
        children: [
          SidebarX(
            headerBuilder: (context, extended) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                    )
                  ],
                ),
              );
            },
            controller: SidebarXController(selectedIndex: 0, extended: true),
            theme: SidebarXTheme(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xff101010),
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                // itemMargin: EdgeInsets.symmetric(horizontal: 10),
                itemTextPadding: const EdgeInsets.symmetric(horizontal: 20),
                iconTheme: const IconThemeData(color: Colors.white),
                selectedItemTextPadding:
                    const EdgeInsets.symmetric(horizontal: 20)),
            extendedTheme: SidebarXTheme(
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  color: const Color(0xff101010),
                )),
            items: const [
              SidebarXItem(
                icon: Icons.space_dashboard,
                label: 'Dashboard',
              ),
              SidebarXItem(icon: Icons.area_chart_rounded, label: 'Reporting'),
              SidebarXItem(
                icon: Icons.transfer_within_a_station,
                label: 'Transaction',
              ),
              SidebarXItem(
                icon: Icons.production_quantity_limits,
                label: 'Menu',
              ),
            ],
          ),
          // Your app screen body

          Expanded(
            child: Container(
              margin: const EdgeInsets.all(20),
              decoration:  BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey.shade300),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
