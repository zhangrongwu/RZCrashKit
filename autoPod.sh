
#!/bin/bash
#该脚本仅适用于cocoapods生成的framework静态库
frameworkName='RZCrashKit'
#修改
oldversion='0.7.8.6'
#修改
version='0.7.8.7'
message='${version}pod版本发布'

cd Example
pod install
cd ..
#本地校验
pod lib lint ${frameworkName}.podspec  --no-clean --verbose --allow-warnings
#代码提交到服务器
git add .
git commit -a -m${version}${message}
git tag -a $version -m${message}
git push origin ${version}
git push -u origin master 
#修改version
sed -i '' "s/${oldversion}/${version}/g" ${frameworkName}.podspec




#公有库校验
###################################公有库#######################################
pod spec lint --no-clean --allow-warnings --verbose
#发布到cocoapods库
pod trunk push ${frameworkName}.podspec --allow-warnings

#!!!!!The spec did not pass validation, due to 902 warnings!!!!!!!!!!! 警告忽略就是了
##########################################################################


