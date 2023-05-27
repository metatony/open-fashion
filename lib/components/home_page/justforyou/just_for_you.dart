// ignore_for_file: prefer_const_constructors
import '../../../exports.dart';
  
class JustForYou extends StatefulWidget {
  const JustForYou({
    super.key,
  });

  @override
  State<JustForYou> createState() => _JustForYouState();
}

class _JustForYouState extends State<JustForYou> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          HeaderTitle(header: 'JUST FOR YOU'),
          Div(),
          SizedBox(height: 23.h),
          CarouselSlider(
            items: [
              ...List.generate(
                justForYou.length,
                (index) {
                  return Product(
                    image: justForYou[index]['image'],
                    title: justForYou[index]['title'],
                    price: justForYou[index]['price'],
                  );
                },
              ).toList(),
            ],
            options: CarouselOptions(
              height: 390.h,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.6,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              onPageChanged: (index, reason) {
                setState(() {
                  selectedImage = index;
                });
              },
            ),
          ),
          SizedBox(height: 17.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(justForYou.length, (index) {
                return pageDot(index: index);
              })
            ],
          ),
          SizedBox(height: 17.h),
        ],
      ),
    );
  }
}

AnimatedContainer pageDot({required int index}) {
  return AnimatedContainer(
    margin: EdgeInsets.only(right: 6.w),
    height: 8.h,
    width: 8.w,
    decoration: BoxDecoration(
      color: selectedImage == index ? Colors.orange : Colors.transparent,
      borderRadius: BorderRadius.circular(6.r),
      border: selectedImage == index
          ? Border.all(color: Colors.transparent)
          : Border.all(color: Colors.grey),
    ),
    duration: Duration(milliseconds: 200),
  );
}










// Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//             ...List.generate(
//               justForYou.length,
//               (index) => pageDot(index: index),
//             ),
//           ]),

