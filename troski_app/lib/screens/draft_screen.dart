/*onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog( // Change AlertDialog to CupertinoAlertDialog
              title: Icon(Icons.notifications), //Text('Popup Modal'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '“Troski” Would Like to Send You Notifications',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Notifications may include alerts, sounds, and icon badges. These can be configured in settings.',
                    style: TextStyle(fontSize: 14, fontFamily: 'Poppins'),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CupertinoButton( // Replace ElevatedButton with CupertinoButton
                        onPressed: () {
                          navigateToWelcomePage(context);
                          // Handle "Don't Allow" option
                          //Navigator.of(context).pop();
                          // Perform necessary actions for "Don't Allow"
                        },
                        child: Text('Don\'t Allow'),
                        padding: EdgeInsets.zero, // Add zero padding for CupertinoButton
                        minSize: 0, // Add minimum size for CupertinoButton
                      ),
                      CupertinoButton( // Replace ElevatedButton with CupertinoButton
                        onPressed: () {
                          navigateToWelcomePage(context);
                          // Handle "Allow" option
                          //Navigator.of(context).pop();
                          // Perform necessary actions for "Allow"
                        },
                        child: Text('Allow'),
                        padding: EdgeInsets.zero, // Add zero padding for CupertinoButton
                        minSize: 0, // Add minimum size for CupertinoButton
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
      */