# 123_lunchManager
123의 소규모프로젝트 - 오늘 뭐먹지?

# 시작 전 gitignore 세팅
1. Project clone : 프로젝트 내려받기.

2. gitignore 파일 생성 : https://www.gitignore.io/api/swift,xcode,cocoapods
<br/> 위 경로를 들어가서 파일 다운받은 후 xcodeproj에 가져다두기
 
3. gitignore 파일 수정 : .gitignore에 *.xcuserstate추가.

4. cache 삭제 : xcode를 꺼둔 상태에서 아래 명령어 수행
<br/>a) git rm --cached 프로젝트경로/lunchManager.xcodeproj/project.xcworkspace/xcuserdata/사용자명.xcuserdatad/UserInterfaceState.xcuserstate
<br/>b) git commit -m "Removed file that shouldn't be tracked"
<br/>c) git clean -f -d
 
5. 일부 소스 수정 후, commit을 찍었을 때 xcuserstate가 뜨지 않으면 완료!
