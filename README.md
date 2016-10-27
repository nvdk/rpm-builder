# RPM Builder
This is  a quick and dirty docker to build rpms for centos 7, it uses rpm-build.
*note*: it is still a work in progress, but should suffice for most simple use cases.

# Use
This script expects your source packages in `/your/rpm/path/SOURCES/` and your spec files in `/your/rpm/path/SPECS`. An example spec file is provided in this repository. If you use this spec file as a base you should provide a source package in `SOURCES/example-package-[version].tar.gz` 

adjust the example spec file with your install instructions. See https://docs.fedoraproject.org/en-US/Fedora_Draft_Documentation/0.1/html/Packagers_Guide/sect-Packagers_Guide-Creating_a_Basic_Spec_File.html for more info.

```
docker build .
docker run -v /your/rpm/path:/home/rpmbuild <image-id>
```

# License
Copyright 2015 Niels Vandekeybus

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

