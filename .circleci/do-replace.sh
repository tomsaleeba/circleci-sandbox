#!/usr/bin/env bash
cd `dirname "$0"`
cd ..

# we need to escape the & character because that has special meaning to sed
fixed=`bash -c "echo '$MONGO_URL' | sed 's+&+\\\\\&+g'"`
sed -i "s+process.env.MONGO_URL+'$fixed'+" some-file.js