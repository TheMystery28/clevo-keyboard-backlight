Name:           clevo-keyboard-backlight
Version:        1.0
Release:        1%{?dist}
Summary:        Clevo keyboard backlight control

License:        MIT
URL:            https://github.com/TheMystery28/clevo-keyboard-backlight

BuildRequires:  gcc
BuildRequires:  make

%description
Control the keyboard backlight on Clevo laptops running Linux.

%prep
%setup -q

%build
make %{?_smp_mflags}

%install
%make_install

%files
%{_bindir}/clevo-keyboard-backlight

%changelog
* Fri Jul 05 2024 Your Name <your.email@example.com> - 1.0-1
- Initial RPM release
