# Tobe-AI 공용 GitHub 설정

이 저장소의 템플릿은 Tobe-AI 조직의 **모든 저장소에 기본값으로 적용**됩니다.

| 파일 | 하는 일 |
| --- | --- |
| `.github/ISSUE_TEMPLATE/1-proposal.yml` | 제안 이슈. 제목이 `[제안] `으로 시작 |
| `.github/ISSUE_TEMPLATE/2-feature.yml` | 기능·작업 이슈. 제목이 `[기능] `으로 시작 |
| `.github/ISSUE_TEMPLATE/3-bug.yml` | 버그 이슈. 제목이 `[버그] `으로 시작 |
| `.github/ISSUE_TEMPLATE/config.yml` | 템플릿 없이 빈 이슈를 만들 수 있는지 |
| `.github/pull_request_template.md` | PR 본문 기본 내용과 PR 제목 규칙 |

## 알아 둘 것

- 이 저장소는 GitHub 규칙상 **공개 저장소**여야 합니다. 비밀이나 내부 정보를 여기에 넣지 마세요.
- 어떤 저장소에 자기 `.github/ISSUE_TEMPLATE/` 폴더가 있으면, 그 저장소는 이 공용 이슈 템플릿을 **전혀 쓰지 않고** 자기 것만 씁니다. PR 템플릿도 같습니다.
- 템플릿에 나오는 라벨(`proposal`, `feature`, `bug`)이 각 저장소에 없으면 라벨만 붙지 않고, 이슈는 정상으로 만들어집니다.
- 저장소별로 다르게 쓰고 싶으면 그 저장소에 `.github/` 템플릿을 따로 두면 됩니다.
