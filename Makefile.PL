use inc::Module::Install;

RTx     'RT-Extension-CommentOnCreate';
all_from 'lib/RT/Extension/CommentOnCreate.pm';
readme_from 'lib/RT/Extension/CommentOnCreate.pm';
author   q{Kevin Falcone <falcone@bestpractical.com>};
license  'gplv2';

auto_install;

WriteAll;

