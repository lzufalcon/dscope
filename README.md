   DScope Application

   Copyright (C) 2008-2017:
         Daniel Roggen, droggen@gmail.com




History
-------

v 1.10: Added Bluetooth RFCOMM; added terminal view; revamped the UI for mobile devices.

v 1.09: Added ability to send one liners to remote device.

v 1.08: converted to Qt5; fixed reception of data in text mode 
        (previously the case where partial lines were received by readAll was not handled, 
        leading to possible changes in number of channels at runtime).

v 1.07 - 18.09.2011: Parse floats and NaN;
                     Replace NaN by user-specified value for display
                     User-specified buffer size
                     Added params to config file for buffer size and NaN replacement values
                     Adapted help to reflect the changes
                     Refactored QDevelop->Qt Creator

v 1.06 - 25.10.2009: Bugfix in FrameParser, linux compilation fix, moved away from qextserialport-1.2win-alpha to latest mercurial tree. Should work under linux.

v 1.05 - 21.09.2009: Includes updated FrameParser: checksum and custom-sized bit-width channels now supported.

v 1.04 - 23.08.2009: Added a function to save aquired signals to a file, from the user interface.


v 1.03 - 24.06.2009: Port from QDesigner to Qt Creator, cleanup of useless files.


v 1.02 - 08.12.2008: Bugfix release
	Fixes opening COM ports > 10 under windows. This fix breaks windows/unix compatibility though.



V 1.00:	Initial release




Dependencies
------------

Prior to version 1.08 (using Qt5) DScope required the qextserialport library, a serial port library for QT. 

Versions previous to 1.06 relied on version 1.2win-alpha (http://sourceforge.net/projects/qextserialport/files/)
Version 1.06 and onwards rely on the last code available at: http://code.google.com/p/qextserialport/

Instructions:
1. Download qextserialport from the tree: see http://code.google.com/p/qextserialport/source/checkout
2. Compile qextserialport
3. Install the library in common QT directories:
3.Windows: 
3.Windows.1: copy the .h files to a newly created directory C:\Qt\2009.04\qt\include\QExtSerialPort (replace c:\Qt\2009.04 by whatever is QT installed in)
3.Windows.2: copy the .dll files qextserialport1.dll qextserialport1d.dll to C:\Qt\2009.04\qt\bin
3.Windows.3: copy the .a files libqextserialport1.a libqextserialport1d.a to C:\Qt\2009.04\qt\lib
3.Linux: 
3.Linux.1: copy the .h files to /usr/include/qt4/QExtSerialPort
3.Linux.2: copy the libqextserialport* to /usr/lib
4. Compile DScope




