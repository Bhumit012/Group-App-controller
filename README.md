# Group App Demo

To run both the main and receiver apps, download and launch them on either a simulator or physical device.

## Getting started

Integration with Tools

Open Xcode and navigate to the Capabilities tab for your target.

Enable the "App Groups" capability by turning it on.

Click the "+" button under the "App Groups" section to add a new group.

Provide a unique identifier for the group, using a reverse DNS style format like "group.com.example.appname".

Repeat steps 2 to 4 for any additional groups you require.

Use the NSUserDefaults API in your code to access the shared group container and read/write data. For example:

let sharedDefaults = UserDefaults(suiteName: "group.com.example.appname")
sharedDefaults?.set("value", forKey: "key")
let value = sharedDefaults?.string(forKey: "key")

## Name
Group app

## Description
This group app can be used for making a tester app, the tester app will have the required sensitive data like prod url etc. if we were to send out our main app for demo testing to stake holders we can easily hide the sensitive data in the group app belonging to the same enterprice while sending out the adhoc builds.


## Usage
Enter some URL in main App, Like google.com or bind.com. Then open the reciver app to open the URL.

## Support
Tell people where they can go to for help. It can be any combination of an issue tracker, a chat room, an email address, etc.

## Roadmap
If you have ideas for releases in the future, it is a good idea to list them in the README.

## Contributing
State if you are open to contributions and what your requirements are for accepting them.

For people who want to make changes to your project, it's helpful to have some documentation on how to get started. Perhaps there is a script that they should run or some environment variables that they need to set. Make these steps explicit. These instructions could also be useful to your future self.

You can also document commands to lint the code or run tests. These steps help to ensure high code quality and reduce the likelihood that the changes inadvertently break something. Having instructions for running tests is especially helpful if it requires external setup, such as starting a Selenium server for testing in a browser.

## Authors and acknowledgment
Show your appreciation to those who have contributed to the project.

## License
For open source projects, say how it is licensed.

## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.
