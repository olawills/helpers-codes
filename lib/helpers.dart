import 'package:flutter/material.dart';

class Helpers extends StatelessWidget {
  const Helpers({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              height: height * 0.44,
              width: double.maxFinite,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 2.5,
                ),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1486218119243-13883505764c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFuJTIwcnVubmluZ3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=400&q=60'),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 5,
                    top: 70,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: Colors.orange.shade600,
                            width: 2.0,
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 25, horizontal: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber.shade600,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 8),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  fixedSize: const Size(200, 50)),
                              child: const Text('Ends in 19 days'),
                            ),
                          ),
                          const Text(
                            'Monthly Trails',
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                side: const BorderSide(
                                    width: 2.0, color: Colors.white),
                                fixedSize: const Size(220, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Text('30KM'),
                                  VerticalDivider(
                                    color: Colors.white,
                                    thickness: 2.0,
                                  ),
                                  Text('58941 participants'),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          // const Expanded(
                          //   child: Align(
                          //     alignment: Alignment.bottomRight,
                          //     child: Text(
                          //       'Row',
                          //       textAlign: TextAlign.right,
                          //       style: TextStyle(
                          //           fontSize: 16, color: Colors.white),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
