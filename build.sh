#!/bin/sh
cd ../
mkdir output

# 일반 파일 복사 (build.sh 제외하고 복사)
rsync -av --exclude 'build.sh' ./test/ ./output/

# 숨김 파일 복사 (.gitignore 등)
cp ./test/.gitignore ./output/

# output -> 다시 test로 복사
cp -R ./output/* ./test/