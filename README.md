##This repo is an attempt to import the sqlite database into the composite OS:

###Folder Breakdown:

 * *Sqlite* folder contains the configured sqlite library, along with some test files
 * *Composite* folder contains the composite OS, along with the additional components and interfaces
 * *Runscript* folder contains the runscripts used for the sqlite components

###Tests:

 * Look to (composite path)/componenets/implementation/sqlite for sqlite component
 * Look to (composite path)componenets/implementation/tests/(micro_ping or micro_sqlite) for test implementations
  * **sqlite_base_test.sh** runs a component that runs through a set of basic queries
  * **sqlite_torrent_test.sh** runs two components that communicate through torrents
     * currently torrent interaction fails to wait for events, meaning query is sent and processed and results written, but the initial thread fails to read the results.

