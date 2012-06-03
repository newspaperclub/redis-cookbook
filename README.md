redis-cookbook
==

Simple Chef cookbook to install and configure a redis-server from the [rwyk
Ubuntu PPA packages](https://launchpad.net/~rwky). Uses Upstart for init control.

Only supports Ubuntu 10.04, and upwards.

Configure your own `/etc/redis/redis.conf` however you like.

Attributes
--

* `redis['package']['unstable']` - Set to true to install from the unstable
  package (Currently 2.6). Defaults to false (2.4).
* `redis['package']['version']` - If present, defines a specific packag
  version. Otherwise, uses latest.

License and Author
==================

Author:: Tom Taylor (<tom@newspaperclub.com>)

Copyright:: 2012 Newspaper Club Ltd.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
