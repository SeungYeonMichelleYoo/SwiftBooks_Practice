# drawFlower
draw a flower using core graphics - referring to Do it! book p612


UIGraphicsGetCurrentContext() 

현재 그래픽 컨텍스트에 대한 참조를 반환합니다. 생성하지 않습니다.

이러한 관점에서 보면 현재 컨텍스트가 그래픽 컨텍스트가 생성된 크기이기 때문에 크기 매개변수가 필요하지 않다는 것을 알 수 있기 때문에 이것은 기억하는 것이 중요합니다.

이 경우 그래픽 컨텍스트를 만들 필요가 없습니다. 

자동으로 생성되었으며 drawRect: 메소드에서 사용자 정의 그리기를 수행할 수 있습니다.

 

vs 


이제 다른 상황에서 drawRect: 메서드 외부에서 사용자 지정 그리기를 수행할 수 있습니다. 

여기서 UIGraphicsBeginImageContext(aSize)를 사용합니다.

UIGraphicsBeginImageContext(aSize) - 먼저 사이즈를 정의하고 시작.

는 UIView의 drawRect: 메소드 외부의 UIKit 레벨에서 그래픽 컨텍스트를 생성하기 위한 것입니다.
UIView의 하위 클래스가 있는 경우 다음과 같이 drawRect: 메서드를 재정의할 수 있습니다.


https://stackoverflow.com/questions/21785254/uigraphicsgetcurrentcontext-vs-uigraphicsbeginimagecontext-uigraphicsendimagecon
