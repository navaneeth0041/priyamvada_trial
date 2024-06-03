import 'package:flutter/material.dart';

class NotesTab extends StatelessWidget {
  const NotesTab({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHieght = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(top: screenHieght / 25, left: screenWidth / 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "5 Notes",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
                Text(
                  "View all",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: screenHieght / 45,
            ),
            Expanded(
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: screenHieght / 65);
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      // height: screenHieght / 6,
                      decoration: BoxDecoration(
                          color: const Color(0xffF9F9F9),
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(18)),
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth / 45,
                              right: screenWidth / 50,
                              top: screenHieght / 50,
                              bottom: screenHieght / 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Chapter $index",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall,
                                      ),
                                      SizedBox(
                                        height: screenWidth / 70,
                                      ),
                                      Text(
                                        "Adi Parva",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "04:29:36",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall,
                                      ),
                                      SizedBox(
                                        width: screenWidth / 45,
                                      ),
                                      const Icon(Icons.delete)
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: screenHieght/50,),
                              Text(
                                "How the Mahābhārata came to be narrated by Sauti to  the assembled rishis at Naimisharanya, after having been recited at the sarpasattra of Janamejaya by Vaisampayana at Takshashila ",
                                style: Theme.of(context).textTheme.headlineSmall,
                              )
                            ],
                          )),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
