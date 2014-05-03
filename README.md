##This repo is an attempt to import the sqlite database into the composite OS:

###Folder Breakdown:

 * *Sqlite* folder contains the configured sqlite library, along with some test files
 * *Composite* folder contains the composite OS, along with the additional components and interfaces
 * *Runscript* folder contains the runscripts used for the sqlite components

###Tests:

 * Look to (composite path)/componenets/implementation/sqlite for sqlite component
     * It is the design for the sqlite component assuming the wait/trigger functionality was properly implemented
 * Look to components/implementation/tests/sqlite_torrent_test(1-2) for sqlite torrent test implementation
 * Look to componenets/implementation/tests/sqlite_base_test for the base sqlite test
  * **sqlite_base_test.sh** runs a component that runs through a set of basic queries
  * **sqlite_torrent_test.sh** runs two components that communicate through torrents
     * currently torrent interaction fails to wait for events, meaning query is sent and processed and results written, but the initial thread fails to read the results.

