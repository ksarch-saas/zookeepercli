#! /bin/sh
#
# entrypoint.sh
# Copyright (C) 2017 yanming02 <yanming02@baidu.com>
#
# Distributed under terms of the MIT license.
#
if [ $1 == init ]
then
	shift
	bin/zkCli.sh $@ create /r3 []
	bin/zkCli.sh $@ create /r3/app []
	bin/zkCli.sh $@ create /r3/users []
	bin/zkCli.sh $@ create /r3/users/root "root"
	bin/zkCli.sh $@ create /r3/users/root/super ""
else
	bin/zkCli.sh -server $2
fi
