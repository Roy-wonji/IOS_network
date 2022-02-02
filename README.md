## IOS_network

### 네트워크 통신의 종류 
- TCP/ DCP  소켓 방식의 연결 통신
- HTTP , HTTPS SMTP 드으이 프로토콜을 이용한 비연결성 통신

### 소켓 방식의 연결 지향  통신 
- 소켓을 이용한 네트워크 통신 방식은 보통 low-level 통신을 통하여 구현

> 하나는 데이터 유실을 방지 하고 완전한 정송을 보장하지만 상대적으로 덜 빠흔 TCP 연결이고 , 
> 또 하나는 데이터의 완전한 전송을 보장 하지 않지만 상대적으로 더 빠른 UDP 연결
</br>
### 비연결  지향 통신 

> 비연결 지향 통신은 TCP나 UDP 을 이요하는 소켓 방식과 달리 HTTP 프로토콜을 사용 하여 메세지를 주고받는 방식

> 비연결 방식의 통신은 매번 요청할때 마다 연결 해야 하므로 소켓 방식에 비해 상대적으로 데이터를 주고 받는 속도에 제약이 있지만 필요할때만 연결하여 요청을 처리한후 연결을 종료 하므로 필요없는 네트워크 대역 소모를 줄일수  있음 ! , 서버부하도 낮출 수있어서  범용적인 모바일 서비스에 이용이 됨
</br>
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
>  RESTful의 근간이 되는 REST(Representational State Transfer)는 웡드 와이드 웹 (World wide Web, WWW)과 같은 분산  하이퍼 미디어 시스템을 위한 소프트웨어 아키텍쳐 방식 


참고자료 
-- 
- [IOS 네트워크 공식 문서](https://developer.apple.com/documentation/network)


