import '../auth/auth_util.dart';
import '../components/edit_my_profile_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopNavigationWidget extends StatefulWidget {
  const TopNavigationWidget({Key? key}) : super(key: key);

  @override
  _TopNavigationWidgetState createState() => _TopNavigationWidgetState();
}

class _TopNavigationWidgetState extends State<TopNavigationWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),
          Material(
            color: Colors.transparent,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0x00141A1F),
                borderRadius: BorderRadius.circular(20),
              ),
              child: AuthUserStreamWidget(
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('TOP_NAVIGATION_Image_6enn3b6w_ON_TAP');
                    logFirebaseEvent('Image_Bottom-Sheet');
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: EditMyProfileWidget(),
                        );
                      },
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      valueOrDefault<String>(
                        currentUserPhoto,
                        'https://media.istockphoto.com/vectors/default-avatar-photo-placeholder-icon-grey-profile-picture-business-vector-id1327592506?k=20&m=1327592506&s=612x612&w=0&h=hgMOPfz7H-CYP_CQ0wbv3IwRkbQna32xWUPoXtMyg5M=',
                      ),
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
