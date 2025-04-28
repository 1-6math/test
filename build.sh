#!/bin/sh
cd ../
mkdir output

# 1. test 디렉토리의 모든 파일과 디렉토리를 output으로 복사 (숨김 파일 제외)
cp -R ./test/* ./output

# 2. .gitignore만 복사
cp ./test/.gitignore ./output

# 3. output 디렉토리에서 build.sh 파일 제거
rm -f ./output/build.sh

# 4. output의 내용을 다시 test로 복사
cp -R ./output/* ./test/
cp ./output/.gitignore ./test/