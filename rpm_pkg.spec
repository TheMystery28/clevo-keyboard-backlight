Name:           clevo-keyboard-backlight
Version:        1.0
Release:        2%{?dist}
Summary:        Clevo keyboard backlight control for Linux

License:        MIT
URL:            https://github.com/TheMystery28/clevo-keyboard-backlight
Source0:        %{name}-%{version}.tar.gz

BuildRequires:  gcc
BuildRequires:  make

%description
Control the keyboard backlight on Clevo laptops running Linux.

%prep
%autosetup

%build
%make_build

%install
%make_install

%files
%{_libexecdir}/%{name}

%changelog
* Fri Jul 07 2023 Your Name <your.email@example.com> - 1.0-2
- Moved binary to /usr/libexec to comply with rpm-ostree requirements
* Fri Jul 05 2023 Your Name <your.email@example.com> - 1.0-1
- Initial RPM release
