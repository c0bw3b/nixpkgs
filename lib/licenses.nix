{ lib }:
let

  spdx = lic: lic // {
    url = "http://spdx.org/licenses/${lic.spdxId}.html";
  };

in

lib.mapAttrs (n: v: v // { shortName = n; }) rec {
  /* License identifiers from SPDX.org whenever possible.
   * If you cannot find your license here, then look for a similar license or
   * add it to this list. The URL mentioned above is a good source for inspiration.
   *
   * Identifiers of known license exceptions can be found at the end of this file.
   */

  afl21 = spdx {
    spdxId = "AFL-2.1";
    fullName = "Academic Free License v2.1";
  };

  afl3 = spdx {
    spdxId = "AFL-3.0";
    fullName = "Academic Free License v3.0";
  };

  agpl3 = spdx {
    spdxId = "AGPL-3.0-only";
    fullName = "GNU Affero General Public License v3.0 only";
  };

  agpl3Plus = spdx {
    spdxId = "AGPL-3.0-or-later";
    fullName = "GNU Affero General Public License v3.0 or later";
  };

  amazonsl = {
    fullName = "Amazon Software License";
    url = http://aws.amazon.com/asl/;
    free = false;
  };

  amd = {
    fullName = "AMD License Agreement";
    url = http://developer.amd.com/amd-license-agreement/;
  };

  apsl20 = spdx {
    spdxId = "APSL-2.0";
    fullName = "Apple Public Source License 2.0";
  };

  arphicpl = {
    fullName = "Arphic Public License";
    url = https://www.freedesktop.org/wiki/Arphic_Public_License/;
  };

  artistic1 = spdx {
    spdxId = "Artistic-1.0";
    fullName = "Artistic License 1.0";
  };

  artistic2 = spdx {
    spdxId = "Artistic-2.0";
    fullName = "Artistic License 2.0";
  };

  asl20 = spdx {
    spdxId = "Apache-2.0";
    fullName = "Apache License 2.0";
  };

  boost = spdx {
    spdxId = "BSL-1.0";
    fullName = "Boost Software License 1.0";
  };

  beerware = spdx {
    spdxId = "Beerware";
    fullName = ''Beerware License'';
  };

  bsd0 = spdx {
    spdxId = "0BSD";
    fullName = "BSD Zero Clause License";
  };

  bsd2 = spdx {
    spdxId = "BSD-2-Clause";
    fullName = ''BSD 2-clause "Simplified" License'';
  };

  bsd3 = spdx {
    spdxId = "BSD-3-Clause";
    fullName = ''BSD 3-clause "New" or "Revised" License'';
  };

  bsd4 = bsdOriginal;

  bsdOriginal = spdx {
    spdxId = "BSD-4-Clause";
    fullName = ''BSD 4-clause "Original" or "Old" License'';
  };

  bsl11 = {
    fullName = "Business Source License 1.1";
    url = https://mariadb.com/bsl11;
  };

  cc0 = spdx {
    spdxId = "CC0-1.0";
    fullName = "Creative Commons Zero v1.0 Universal";
  };

  cc-by-30 = spdx {
    spdxId = "CC-BY-3.0";
    fullName = "Creative Commons Attribution 3.0 Unported";
  };

  cc-by-40 = spdx {
    spdxId = "CC-BY-4.0";
    fullName = "Creative Commons Attribution 4.0 International";
  };

  cc-by-nc-40 = spdx {
    spdxId = "CC-BY-NC-4.0";
    fullName = "Creative Commons Attribution-NonCommercial 4.0 International";
    free = false;
  };

  cc-by-nc-sa-20 = spdx {
    spdxId = "CC-BY-NC-SA-2.0";
    fullName = "Creative Commons Attribution-NonCommercial-ShareAlike 2.0 Generic";
    free = false;
  };

  cc-by-nc-sa-25 = spdx {
    spdxId = "CC-BY-NC-SA-2.5";
    fullName = "Creative Commons Attribution-NonCommercial-ShareAlike 2.5 Generic";
    free = false;
  };

  cc-by-nc-sa-30 = spdx {
    spdxId = "CC-BY-NC-SA-3.0";
    fullName = "Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported";
    free = false;
  };

  cc-by-nc-sa-40 = spdx {
    spdxId = "CC-BY-NC-SA-4.0";
    fullName = "Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International";
    free = false;
  };

  cc-by-nd-30 = spdx {
    spdxId = "CC-BY-ND-3.0";
    fullName = "Creative Commons Attribution-NoDerivs 3.0 Unported";
    free = false;
  };

  cc-by-nd-40 = spdx {
    spdxId = "CC-BY-ND-4.0";
    fullName = "Creative Commons Attribution-NoDerivatives 4.0 International";
    free = false;
  };

  cc-by-sa-25 = spdx {
    spdxId = "CC-BY-SA-2.5";
    fullName = "Creative Commons Attribution-ShareAlike 2.5 Generic";
  };

  cc-by-sa-30 = spdx {
    spdxId = "CC-BY-SA-3.0";
    fullName = "Creative Commons Attribution-ShareAlike 3.0 Unported";
  };

  cc-by-sa-40 = spdx {
    spdxId = "CC-BY-SA-4.0";
    fullName = "Creative Commons Attribution-ShareAlike 4.0 International";
  };

  cddl = spdx {
    spdxId = "CDDL-1.0";
    fullName = "Common Development and Distribution License 1.0";
  };

  cecill20 = spdx {
    spdxId = "CECILL-2.0";
    fullName = "CeCILL Free Software License Agreement v2.0";
  };

  cecill21 = spdx {
    spdxId = "CECILL-2.1";
    fullName = "CeCILL Free Software License Agreement v2.1";
  };

  cecill-b = spdx {
    spdxId = "CECILL-B";
    fullName  = "CeCILL-B Free Software License Agreement";
  };

  cecill-c = spdx {
    spdxId = "CECILL-C";
    fullName  = "CeCILL-C Free Software License Agreement";
  };

  clArtistic = spdx {
    spdxId = "ClArtistic";
    fullName = "Clarified Artistic License";
  };

  clisp = [ gpl2 clispExcep20 ]; # https://gitlab.com/gnu-clisp/clisp/blob/master/COPYRIGHT

  cpal10 = spdx {
    spdxId = "CPAL-1.0";
    fullName = "Common Public Attribution License 1.0";
  };

  cpl10 = spdx {
    spdxId = "CPL-1.0";
    fullName = "Common Public License 1.0";
  };

  curl = spdx {
    spdxId = "curl";
    fullName = "curl License";
  };

  doc = spdx {
    spdxId = "DOC";
    fullName = "DOC License";
  };

  eapl = {
    fullName = "EPSON AVASYS PUBLIC LICENSE";
    url = http://avasys.jp/hp/menu000000700/hpg000000603.htm;
    free = false;
  };

  efl10 = spdx {
    spdxId = "EFL-1.0";
    fullName = "Eiffel Forum License v1.0";
  };

  efl20 = spdx {
    spdxId = "EFL-2.0";
    fullName = "Eiffel Forum License v2.0";
  };

  elastic = {
    fullName = "Elastic License";
    url = https://github.com/elastic/elasticsearch/blob/master/licenses/ELASTIC-LICENSE.txt;
    free = false;
  };

  epl10 = spdx {
    spdxId = "EPL-1.0";
    fullName = "Eclipse Public License 1.0";
  };

  epl20 = spdx {
    spdxId = "EPL-2.0";
    fullName = "Eclipse Public License 2.0";
  };

  epson = {
    fullName = "Seiko Epson Corporation Software License Agreement for Linux";
    url = https://download.ebz.epson.net/dsc/du/02/eula/global/LINUX_EN.html;
    free = false;
  };

  eupl11 = spdx {
    spdxId = "EUPL-1.1";
    fullName = "European Union Public License 1.1";
  };

  fdl12 = spdx {
    spdxId = "GFDL-1.2-only";
    fullName = "GNU Free Documentation License v1.2 only";
  };

  fdl12Plus = spdx {
    spdxId = "GFDL-1.2-or-later";
    fullName = "GNU Free Documentation License v1.2 or later";
  };

  fdl13 = spdx {
    spdxId = "GFDL-1.3-only";
    fullName = "GNU Free Documentation License v1.3 only";
  };

  fdl13Plus = spdx {
    spdxId = "GFDL-1.3-or-later";
    fullName = "GNU Free Documentation License v1.3 or later";
  };

  ffsl = {
    fullName = "Floodgap Free Software License";
    url = http://www.floodgap.com/software/ffsl/license.html;
    free = false;
  };

  free = {
    fullName = "Unspecified free software license";
  };

  g4sl = {
    fullName = "Geant4 Software License";
    url = https://geant4.web.cern.ch/geant4/license/LICENSE.html;
  };

  geogebra = {
    fullName = "GeoGebra Non-Commercial License Agreement";
    url = https://www.geogebra.org/license;
    free = false;
  };

  gpl1 = spdx {
    spdxId = "GPL-1.0-only";
    fullName = "GNU General Public License v1.0 only";
  };

  gpl1Plus = spdx {
    spdxId = "GPL-1.0-or-later";
    fullName = "GNU General Public License v1.0 or later";
  };

  gpl2 = spdx {
    spdxId = "GPL-2.0-only";
    fullName = "GNU General Public License v2.0 only";
  };

  gpl2Classpath = [ gpl2 classpathExcep20 ];

  gpl2Plus = spdx {
    spdxId = "GPL-2.0-or-later";
    fullName = "GNU General Public License v2.0 or later";
  };

  gpl2PlusClasspath = [ gpl2Plus classpathExcep20 ];

  gpl3 = spdx {
    spdxId = "GPL-3.0-only";
    fullName = "GNU General Public License v3.0 only";
  };

  gpl3Plus = spdx {
    spdxId = "GPL-3.0-or-later";
    fullName = "GNU General Public License v3.0 or later";
  };

  gpl3PlusClasspath = [ gpl3Plus classpathExcep20 ];

  gpl3Qt = [ gpl3 qtgplExcep10 ];

  hpnd = spdx {
    spdxId = "HPND";
    fullName = "Historic Permission Notice and Disclaimer";
  };

  iacpi = spdx {
    spdxId = "Intel-ACPI";
    fullName = "Intel ACPI Software License Agreement";
  };

  ijg = spdx {
    spdxId = "IJG";
    fullName = "Independent JPEG Group License";
  };

  imagemagick = spdx {
    spdxId = "ImageMagick";
    fullName = "ImageMagick License";
  };

  inria-compcert = {
    fullName  = "INRIA Non-Commercial License Agreement for the CompCert verified compiler";
    url       = "http://compcert.inria.fr/doc/LICENSE";
    free      = false;
  };

  inria-icesl = {
    fullName = "INRIA Non-Commercial License Agreement for IceSL";
    url      = "http://shapeforge.loria.fr/icesl/EULA_IceSL_binary.pdf";
    free     = false;
  };

  ipa = spdx {
    spdxId = "IPA";
    fullName = "IPA Font License";
  };

  ipl10 = spdx {
    spdxId = "IPL-1.0";
    fullName = "IBM Public License v1.0";
  };

  isc = spdx {
    spdxId = "ISC";
    fullName = "ISC License";
  };

  # Proprietary binaries; free to redistribute without modification.
  issl = {
    fullName = "Intel Simplified Software License";
    url = https://software.intel.com/en-us/license/intel-simplified-software-license;
    free = false;
  };

  jasper = spdx {
    spdxId = "JasPer-2.0";
    fullName = "JasPer License";
  };

  lgpl2 = spdx {
    spdxId = "LGPL-2.0-only";
    fullName = "GNU Library General Public License v2 only";
  };

  lgpl2Plus = spdx {
    spdxId = "LGPL-2.0-or-later";
    fullName = "GNU Library General Public License v2 or later";
  };

  lgpl21 = spdx {
    spdxId = "LGPL-2.1-only";
    fullName = "GNU Library General Public License v2.1 only";
  };

  lgpl21Plus = spdx {
    spdxId = "LGPL-2.1-or-later";
    fullName = "GNU Library General Public License v2.1 or later";
  };

  lgpl21Qt = [ lgpl21 qtlgplExcep11 ];

  lgpl3 = spdx {
    spdxId = "LGPL-3.0-only";
    fullName = "GNU Lesser General Public License v3.0 only";
  };

  lgpl3Plus = spdx {
    spdxId = "LGPL-3.0-or-later";
    fullName = "GNU Lesser General Public License v3.0 or later";
  };

  libpng = spdx {
    spdxId = "Libpng";
    fullName = "libpng License";
  };

  libtiff = spdx {
    spdxId = "libtiff";
    fullName = "libtiff License";
  };

  llgpl21 = [ lgpl21 franzPreamble ]; # Lisp LGPL-2.1

  lppl12 = spdx {
    spdxId = "LPPL-1.2";
    fullName = "LaTeX Project Public License v1.2";
  };

  lppl13c = spdx {
    spdxId = "LPPL-1.3c";
    fullName = "LaTeX Project Public License v1.3c";
  };

  lpl-102 = spdx {
    spdxId = "LPL-1.02";
    fullName = "Lucent Public License v1.02";
  };

  miros = spdx {
    spdxId = "MirOS";
    fullName = "MirOS License";
  };

  # Expat variant of the MIT license
  # Look at 'x11' for the X11 variant
  mit = spdx {
    spdxId = "MIT";
    fullName = "MIT License";
  };

  mpl10 = spdx {
    spdxId = "MPL-1.0";
    fullName = "Mozilla Public License 1.0";
  };

  mpl11 = spdx {
    spdxId = "MPL-1.1";
    fullName = "Mozilla Public License 1.1";
  };

  mpl20 = spdx {
    spdxId = "MPL-2.0";
    fullName = "Mozilla Public License 2.0";
  };

  mspl = spdx {
    spdxId = "MS-PL";
    fullName = "Microsoft Public License";
  };

  msrla = {
    fullName  = "Microsoft Research License Agreement";
    url       = "http://research.microsoft.com/en-us/projects/pex/msr-la.txt";
    free = false;
  };

  ncsa = spdx {
    spdxId = "NCSA";
    fullName  = "University of Illinois/NCSA Open Source License";
  };

  notion_lgpl = {
    url = "https://raw.githubusercontent.com/raboof/notion/master/LICENSE";
    fullName = "Notion modified LGPL";
  };

  nposl3 = spdx {
    spdxId = "NPOSL-3.0";
    fullName = "Non-Profit Open Software License 3.0";
  };

  ocaml = [ lgpl21 ocamlExcep ]; # OCaml's License - https://ocaml.org/docs/license.html

  ocamlpro_nc = {
    fullName = "OCamlPro Non Commercial license version 1";
    url = "https://alt-ergo.ocamlpro.com/http/alt-ergo-2.2.0/OCamlPro-Non-Commercial-License.pdf";
    free = false;
  };

  ofl = spdx {
    spdxId = "OFL-1.1";
    fullName = "SIL Open Font License 1.1";
  };

  openldap = spdx {
    spdxId = "OLDAP-2.8";
    fullName = "Open LDAP Public License v2.8";
  };

  openssl = spdx {
    spdxId = "OpenSSL";
    fullName = "OpenSSL License";
  };

  osl21 = spdx {
    spdxId = "OSL-2.1";
    fullName = "Open Software License 2.1";
  };

  osl3 = spdx {
    spdxId = "OSL-3.0";
    fullName = "Open Software License 3.0";
  };

  php301 = spdx {
    spdxId = "PHP-3.01";
    fullName = "PHP License v3.01";
  };

  postgresql = spdx {
    spdxId = "PostgreSQL";
    fullName = "PostgreSQL License";
  };

  postman = {
    fullName = "Postman EULA";
    url = https://www.getpostman.com/licenses/postman_base_app;
    free = false;
  };

  psfl = spdx {
    spdxId = "Python-2.0";
    fullName = "Python Software Foundation License version 2";
    #url = http://docs.python.org/license.html;
  };

  publicDomain = {
    fullName = "Public Domain";
  };

  purdueBsd = {
    fullName = "Purdue BSD-Style License"; # also known as lsof license
    url = https://enterprise.dejacode.com/licenses/public/purdue-bsd;
  };

  qpl = spdx {
    spdxId = "QPL-1.0";
    fullName = "Q Public License 1.0";
  };

  qwt = [ lgpl21 qwtExcep10 ]; # http://qwt.sourceforge.net/qwtlicense.html

  ruby = spdx {
    spdxId = "Ruby";
    fullName = "Ruby License";
  };

  sendmail = spdx {
    spdxId = "Sendmail";
    fullName = "Sendmail License";
  };

  sgi-b-20 = spdx {
    spdxId = "SGI-B-2.0";
    fullName = "SGI Free Software License B v2.0";
  };

  sleepycat = spdx {
    spdxId = "Sleepycat";
    fullName = "Sleepycat License";
  };

  smail = {
    shortName = "smail";
    fullName = "SMAIL General Public License";
    url = http://metadata.ftp-master.debian.org/changelogs/main/d/debianutils/debianutils_4.8.1_copyright;
  };

  tcltk = spdx {
    spdxId = "TCL";
    fullName = "TCL/TK License";
  };

  ufl = {
    fullName = "Ubuntu Font License 1.0";
    url = http://font.ubuntu.com/ufl/ubuntu-font-licence-1.0.txt;
  };

  unfree = {
    fullName = "Unfree";
    free = false;
  };

  unfreeRedistributable = {
    fullName = "Unfree redistributable";
    free = false;
  };

  unfreeRedistributableFirmware = {
    fullName = "Unfree redistributable firmware";
    # Note: we currently consider these "free" for inclusion in the
    # channel and NixOS images.
  };

  unlicense = spdx {
    spdxId = "Unlicense";
    fullName = "The Unlicense";
  };

  upl = spdx {
    spdxId = "UPL-1.0";
    fullName = "Universal Permissive License v1.0";
  };

  vim = spdx {
    spdxId = "Vim";
    fullName = "Vim License";
  };

  virtualbox-puel = {
    fullName = "Oracle VM VirtualBox Extension Pack Personal Use and Evaluation License (PUEL)";
    url = "https://www.virtualbox.org/wiki/VirtualBox_PUEL";
    free = false;
  };

  vsl10 = spdx {
    spdxId = "VSL-1.0";
    fullName = "Vovida Software License v1.0";
  };

  watcom = spdx {
    spdxId = "Watcom-1.0";
    fullName = "Sybase Open Watcom Public License 1.0";
  };

  w3c = spdx {
    spdxId = "W3C";
    fullName = "W3C Software Notice and License";
  };

  wadalab = {
    fullName = "Wadalab Font License";
    url = https://fedoraproject.org/wiki/Licensing:Wadalab?rd=Licensing/Wadalab;
  };

  wtfpl = spdx {
    spdxId = "WTFPL";
    fullName = "Do What The F*ck You Want To Public License";
  };

  wxWindows = [ lgpl2Plus wxExcep31 ];

  # X11 variant of the MIT license
  # Look at 'mit' for the Expat variant
  x11 = spdx {
    spdxId = "X11";
    fullName = "X11 License";
  };

  xfig = {
    fullName = "xfig";
    url = "http://mcj.sourceforge.net/authors.html#xfig";
  };

  zlib = spdx {
    spdxId = "Zlib";
    fullName = "zlib License";
  };

  zpl20 = spdx {
    spdxId = "ZPL-2.0";
    fullName = "Zope Public License 2.0";
  };

  zpl21 = spdx {
    spdxId = "ZPL-2.1";
    fullName = "Zope Public License 2.1";
  };

  /*
   * Known license exceptions are listed after this.
   * Refer to https://spdx.org/licenses/exceptions-index.html
   */

  acExcep20 = spdx {
    spdxId = "Autoconf-exception-2.0"; # Typically used with GPL-2.0
    fullName = "with Autoconf exception 2.0";
  };

  acExcep30 = spdx {
    spdxId = "Autoconf-exception-3.0"; # Typically used with GPL-3.0
    fullName = "with Autoconf exception 3.0";
  };

  bisonExcep22 = spdx {
    spdxId = "Bison-exception-2.2"; # Typically used with GPL-2.0 or GPL-3.0
    fullName = "with Bison exception 2.2";
  };

  classpathExcep20 = spdx {
    spdxId = "Classpath-exception-2.0"; # Typically used by Java packages with (L)GPL licensing
    fullName = "with Classpath exception 2.0";
  };

  clispExcep20 = spdx {
    spdxId = "CLISP-exception-2.0"; # Typically used with GPL-2.0
    fullName = "with CLISP exception 2.0";
  };

  ds389Excep = spdx {
    spdxId = "389-exception"; # Specified to be associated with GPL-2.0
    fullName = "with 389 Directory Server exception";
  };

  fltkExcep = spdx {
    spdxId = "FLTK-exception"; # Specified to be associated with LGPL-2.0
    fullName = "with FLTK exception";
  };

  fontExcep20 = spdx {
    spdxId = "Font-exception-2.0"; # Typically used with GPL-2.0
    fullName = "with Font exception 2.0";
  };

  franzPreamble = {
    fullName = "with Franz Inc. preamble for clarification of LGPL terms in context of Lisp";
    url = "https://opensource.franz.com/preamble.html";
  };

  # Sometimes also referred to as "linking exception"
  gccExcep20 = spdx {
    spdxId = "GCC-exception-2.0"; # Typically used with GPL-2.0-or-later
    fullName = "with GCC Runtime Library exception 2.0";
  };

  gccExcep31 = spdx {
    spdxId = "GCC-exception-3.1"; # Typically used with GPL-3.0
    fullName = "with GCC Runtime Library exception 3.1";
  };

  i2pExcep = spdx {
    spdxId = "i2p-gpl-java-exception"; # Typically used with GPL-2.0-or-later
    fullName = "with i2p GPL+Java exception";
  };

  libtoolExcep = spdx {
    spdxId = "Libtool-exception"; # Typically used with GPL-2.0-or-later
    fullName = "with Libtool exception";
  };

  llvmExcep = spdx {
    spdxId = "LLVM-exception"; # Created specifically to be used with Apache-2.0
    fullName = "with LLVM exception";
  };

  lzmaExcep = spdx {
    spdxId = "LZMA-exception"; # Applies specifically to CPL-1.0
    fullName = "with LZMA exception";
  };

  mifExcep = spdx {
    spdxId = "mif-exception"; # Typically used with GPL-2.0 for older versions of GCC
    fullName = "with Macros and Inline Functions exception";
  };

  ocamlExcep = spdx {
    spdxId = "OCaml-LGPL-linking-exception"; # Used with LGPL-2.0-or-later
    fullName = "with OCaml LGPL linking exception";
  };

  ojdkExcep10 = spdx {
    spdxId = "OpenJDK-assembly-exception-1.0"; # Typically used with GPL-2.0-or-later
    fullName = "with OpenJDK Assembly exception 1.0";
  };

  ovpnExcep = spdx {
    spdxId = "openvpn-openssl-exception"; # Typically used with GPL-2.0
    fullName = "with OpenVPN OpenSSL exception";
  };

  pspdfFontExcep = spdx {
    spdxId = "PS-or-PDF-font-exception-20170817"; # Usage recommended with AGPL-3.0
    fullName = "with PS/PDF font exception (2017-08-17)";
  };

  qtgplExcep10 = spdx {
    spdxId = "Qt-GPL-exception-1.0"; # Typically used with GPL-3.0
    fullName = "with Qt GPL exception 1.0";
  };

  qtlgplExcep11 = spdx {
    spdxId = "Qt-LGPL-exception-1.1"; # Usage only possible with LGPL-2.1
    fullName = "with Qt LGPL exception 1.1";
  };

  qwtExcep10 = spdx {
    spdxId = "Qwt-exception-1.0"; # Specified to be associated with LGPL-2.1
    fullName = "with Qwt exception 1.0";
  };

  syscallExcep = spdx {
    spdxId = "Linux-syscall-note"; # Used by the Linux kernel to clarify how user space API files should be treated
    fullName = "with Linux syscall note";
  };

  wxExcep31 = spdx {
    spdxId = "WxWindows-exception-3.1"; # Typically used with LGPL-2.0-or-later
    fullName = "with WxWindows Library exception 3.1";
  };
}
