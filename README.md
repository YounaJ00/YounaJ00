### 주유나 · Youna Joo

**금융 서비스의 정합성과 보안을 코드로 지키는 풀스택 개발자**

돈이 오가는 화면과 서버에서 동시성, 감사, 권한 경계를 먼저 설계합니다.

![Java](https://img.shields.io/badge/Java-ED8B00?style=flat-square&logo=openjdk&logoColor=white) ![Spring Boot](https://img.shields.io/badge/Spring%20Boot-6DB33F?style=flat-square&logo=springboot&logoColor=white) ![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white) ![React](https://img.shields.io/badge/React-20232A?style=flat-square&logo=react&logoColor=61DAFB) ![Next.js](https://img.shields.io/badge/Next.js-000000?style=flat-square&logo=nextdotjs&logoColor=white) ![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)

<br>

## Projects

### <img src="assets/corebank.png" height="22" alt=""> CoreBank · 계정계 코어뱅킹

> 신한DS 금융SW 풀스택 개발자 양성과정 7기 팀 프로젝트(6인) · 2026.08 ~ 진행 중<br>
> 이체한도와 알림, 관리자 인증·권한·감사, 성능 측정을 맡았고 프론트엔드를 이끌었습니다.

![BE](https://img.shields.io/badge/BE-1F2328?style=flat-square) ![Java 21](https://img.shields.io/badge/Java%2021-ED8B00?style=flat-square&logo=openjdk&logoColor=white) ![Spring Boot 4](https://img.shields.io/badge/Spring%20Boot%204-6DB33F?style=flat-square&logo=springboot&logoColor=white) ![Spring Modulith](https://img.shields.io/badge/Spring%20Modulith-6DB33F?style=flat-square&logo=spring&logoColor=white) ![JPA · Querydsl](https://img.shields.io/badge/JPA%20%C2%B7%20Querydsl-59666C?style=flat-square&logo=hibernate&logoColor=white) ![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white) ![JUnit 5](https://img.shields.io/badge/JUnit%205-25A162?style=flat-square&logo=junit5&logoColor=white) ![Testcontainers](https://img.shields.io/badge/Testcontainers-291A3F?style=flat-square) ![ArchUnit](https://img.shields.io/badge/ArchUnit-4B5563?style=flat-square) ![k6](https://img.shields.io/badge/k6-7D64FF?style=flat-square&logo=k6&logoColor=white) ![AWS](https://img.shields.io/badge/AWS-232F3E?style=flat-square)<br>
![FE](https://img.shields.io/badge/FE-1F2328?style=flat-square) ![React 19](https://img.shields.io/badge/React%2019-20232A?style=flat-square&logo=react&logoColor=61DAFB) ![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white) ![TanStack Query](https://img.shields.io/badge/TanStack%20Query-FF4154?style=flat-square&logo=reactquery&logoColor=white) ![Vitest](https://img.shields.io/badge/Vitest-6E9F18?style=flat-square&logo=vitest&logoColor=white) ![Playwright](https://img.shields.io/badge/Playwright-2EAD33?style=flat-square) ![MSW](https://img.shields.io/badge/MSW-FF6A33?style=flat-square&logo=mockserviceworker&logoColor=white)

- 이체 한도 검증 구간의 공유 락과 배타 락을 분리하고 멱등키를 적용해, 동시 요청 부하에서도 원장·잔액·한도 정합성을 유지했습니다.
- 알림 발송에 트랜잭셔널 아웃박스를 적용해, 이체 11,063건 처리 중 강제 종료에도 유실·중복 없이 정확히 한 번 전달했습니다.
- 감사 로그에 SHA-256 무결성 해시를 적재하고 WORM 버킷 사본과 대조하는 검증 배치를 두어 변조를 탐지했습니다.
- 부하 테스트로 병목을 DB 커넥션 풀에서 WAS CPU로 재특정하고, 안정 처리 구간을 5/s에서 10/s로 끌어올렸습니다.
- 로그인 응답의 계정 열거와 타이밍 공격을 응답 시간·순서 정규화로 차단했습니다(차단율 100%, 오탐 0%).

[corebank-server](https://github.com/corebank-tech/corebank-server) · [corebank-fe](https://github.com/corebank-tech/corebank-fe)

<br>

### <img src="assets/techtaurant.png" height="22" alt=""> Techtaurant · 기술 블로그 플랫폼

> 4인 팀(FE 2 · BE 2) · 2026.05 ~ 진행 중<br>
> 게시물 작성·목록·상세와 댓글 도메인, 프론트엔드 전역 SEO를 맡았습니다.

![FE](https://img.shields.io/badge/FE-1F2328?style=flat-square) ![Next.js](https://img.shields.io/badge/Next.js-000000?style=flat-square&logo=nextdotjs&logoColor=white) ![React 19](https://img.shields.io/badge/React%2019-20232A?style=flat-square&logo=react&logoColor=61DAFB) ![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white) ![TanStack Query](https://img.shields.io/badge/TanStack%20Query-FF4154?style=flat-square&logo=reactquery&logoColor=white) ![Jest](https://img.shields.io/badge/Jest-C21325?style=flat-square&logo=jest&logoColor=white) ![Cloudflare Workers](https://img.shields.io/badge/Cloudflare%20Workers-F38020?style=flat-square&logo=cloudflareworkers&logoColor=white)

- App Router `generateMetadata`로 게시물·목록·프로필 메타데이터 생성을 중앙화했습니다.
- canonical·noindex 색인 정책을 도메인별로 정의하고, robots.txt와 sitemap을 연동했습니다.
- 마크다운 에디터에서 자동·수동 임시저장이 겹쳐 `draftId` 확정 전 생성 요청이 두 번 나가던 중복 생성을 재현해 차단했습니다.
- Edge 런타임에서 동작하지 않던 HTML sanitization을 Edge 호환 정제기로 교체했습니다.

[techtaurant-fe](https://github.com/techtaurant/techtaurant-fe)

<br>

### <img src="assets/proofy.png" height="22" alt=""> Proofy · 지급정지 이의제기 서류 준비 도우미

> 2026 대한민국 청년 CAREER FAIR AI 해커톤 출품작 · 2026.11.21 ~ 11.23<br>
> 사기 피해금이 입금돼 계좌가 묶인 청년이 은행에 낼 소명 서류를 준비하도록 돕는 웹앱입니다.

![FE](https://img.shields.io/badge/FE-1F2328?style=flat-square) ![React 19](https://img.shields.io/badge/React%2019-20232A?style=flat-square&logo=react&logoColor=61DAFB) ![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white) ![TanStack Query](https://img.shields.io/badge/TanStack%20Query-FF4154?style=flat-square&logo=reactquery&logoColor=white) ![Zustand](https://img.shields.io/badge/Zustand-433E38?style=flat-square) ![Vitest](https://img.shields.io/badge/Vitest-6E9F18?style=flat-square&logo=vitest&logoColor=white) ![MSW](https://img.shields.io/badge/MSW-FF6A33?style=flat-square&logo=mockserviceworker&logoColor=white) ![Cloudflare Pages](https://img.shields.io/badge/Cloudflare%20Pages-F38020?style=flat-square&logo=cloudflarepages&logoColor=white)

- AI 에이전트의 분석 진행을 단계별로 노출하고, 되묻는 질문에 답하면 재분석을 요청하는 HITL 흐름을 화면에서 구현했습니다.
- 기한 계산·증빙 대조·초안 편집 같은 도메인 로직을 UI에서 분리해 단위 테스트로 검증했습니다.
- API 미완성 구간을 MSW 모킹으로 대체해(12단계·30초 분석 시뮬레이션) 화면 플로우를 선개발했습니다.
- 법정 서식(별지 제4호 이의제기신청서)을 양식 그대로 PDF로 생성하고, 입력 길이에 따른 줄 수를 계산해 불필요한 페이지 분할을 막았습니다.

[데모](https://proofy-app.pages.dev) · [시연 영상](https://youtu.be/Pp6n4oEeSkQ) · [proofy-fe](https://github.com/proofy-ai/proofy-fe)

<br>
