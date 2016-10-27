Summary: This is an example package description
Name: example-package
Version: 0.0.1
Release: beta
License: GPL-3
Group: Application/Semantics
URL: http://github.com/nvdk/rpm-builder
Source0: %{name}-%{version}.tar.gz
Requires: java-1.8.0-openjdk-headless
 
%description
This is a long package description.


%prep

%setup -q

%install

# generate file list (cfr http://www.techrepublic.com/article/making-rpms-part-4-finishing-the-spec-file/)
find %{buildroot} -type f > $RPM_BUILD_DIR/file.list.%{name}
sed -i 's|%{buildroot}| |' $RPM_BUILD_DIR/file.list.%{name}
echo "-- FILE LIST -- "
cat $RPM_BUILD_DIR/file.list.%{name}

%pre

%post

%clean
rm -rf %{buildroot}

%files -f ../file.list.%{name}
%dir
%defattr(-,root,root,-)
 
%changelog
