## IOS_network

### 네트워크 통신의 종류 
- TCP/ DCP  소켓 방식의 연결 통신
- HTTP ,HTTPS ,SMTP 드으이 프로토콜을 이용한 비연결성 통신

### 소켓 방식의 연결 지향  통신 
- 소켓을 이용한 네트워크 통신 방식은 보통 low-level 통신을 통하여 구현

> 하나는 데이터 유실을 방지 하고 완전한 정송을 보장하지만 상대적으로 덜 빠흔 TCP 연결이고 , 
> 또 하나는 데이터의 완전한 전송을 보장 하지 않지만 상대적으로 더 빠른 UDP 연결

### 비연결 지향 통신 
> 비연결 지향 통신은 TCP나 UDP 을 이요하는 소켓 방식과 달리 HTTP 프로토콜을 사용 하여 메세지를 주고받는 방식

> 비연결 방식의 통신은 매번 요청할때 마다 연결 해야 하므로 소켓 방식에 비해 상대적으로 데이터를 주고 받는 속도에 제약이 있지만 필요할때만 연결하여 요청을 처리한후 연결을 종료 하므로 필요없는 네트워크 대역 소모를 줄일수  있음 ! , 서버부하도 낮출 수있어서  범용적인 모바일 서비스에 이용이 됨

### SOAP 방식 
> SOAP(Simple Obnject Acess Protocol )은 일반적으로 널리 알려진 HTTP , HTTPS SMTAP 프로토콜을 통해 양쪽에서 XML 형태의 메세지를 주고 받도록 구현된 프로토콜
> SOAP 는 웹서비스에서 메세지를 전달 할 때 몇사지 형태의 메세지 패턴 중에서 원켝 프로시저 호출 (Remote Procedure Cell: RPC)이라고 불리는 클라이언트 - 서버 구족의 메세 패턴을 사용 
 
 </br>
통신의 구조 

- Envelope
- Header
- Body 


<img src="https://user-images.githubusercontent.com/75601594/152118303-2bdc387f-0ff4-455d-b42f-67d2168ba037.png" width="300" height="300">

> SOAP의 메세지 구조는 XML을 끈간으로 하여 헤더 부분과 바디 부분으 조합하는 구조의 디자인 패턴으로 설계 되어있음

### RESTful 방식 
>  RESTful의 근간이 되는 REST(Representational State Transfer)는 웡드 와이드 웹 (World wide Web, WWW)과 같은 분산 하이퍼 미디어 시스템을 위한 소프트웨어 아키텍쳐 방식을 한 형식
> 단순히 네트워크 자원을 정의하고 자원에 대한 주소를 관리 하는 방법 ,                            쉽게 말해 REST란 웹  형식을 비어 데이터를 전송하되 , SOAP나 쿠키등 별도의 전송 프로토콜 없이 전송ㅅ하기 위해 만들어진 간단한 형식의 인터페이스임

### REST 데이터 구조
> REST는 HTTP 프로토콜을 방탕으로 필요한 데이터를 별도의 규약 없이 주고 받기만 함 ,               단순화 해보면  특정 웹페이지를 보기위해 웹브라우저에 URL을 입력하는 것 처럼 , 데이터를 요청하는 URL을 네트워크를 통해 서버에 전달하면  서버에서는 그게 맞는 응답데이터가 전송 된다는 의미

### RESTful API와 HTTP 전송 방식
> 일반적으로 서버에 요청하는 정보의 타입은 쓰기, 읽기, 수정, 삭제의 네가지로 구분이 됨               이네가기를 합하여 CRUD라고 부르는데 각각 쓰기(Create) ,읽기(Read), 수정(Update), 삭제(Delete)의 첫글자를 따서 부름  데이터를 받아오기만 하는 경우 읽기 요청만 사용하지만 , 메신저 채팅이난 SNS 게시물 작성 등 서버를 통해 특정 작업을 수행 할때는 CRUD의 요청으로 모두 처리 해야 하는 경우가 있습니다

### RESTful API와 HTTP 매소드 종류 
|메소드(전송방식)|목적
|:---:|:------------------------------------------:|
|GET||특정 리소스의 대표적인 정보를 요청할때||


참고자료 
-- 
- [IOS 네트워크 공식 문서](https://developer.apple.com/documentation/network)


