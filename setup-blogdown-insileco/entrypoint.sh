#!/bin/sh -l


if [ $1 = true ]
then
  r -e "blogdown::check_config()"
  r -e "blogdown::check_content()"
  r -e "blogdown::build_site(build_rmd = 'newfile')"
  r -e "blogdown::build_site(build_rmd = 'timestamp')"
else
  echo "Do not build the blog"
fi

rversion=$(\R --version | awk 'NR == 1' | awk '{print substr($0, 1, 28)}')
echo "::set-output name=installed-r-version::$rversion"
