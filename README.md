# Tobe-AI 공용 GitHub 설정

이 저장소는 Tobe-AI 조직의 기본 이슈 양식과 PR 템플릿을 관리합니다. 실제 적용 여부는 대상 저장소의 기본 브랜치에 자체 양식이 있는지에 따라 달라집니다.

| 파일 | 하는 일 |
| --- | --- |
| [`1-proposal.yml`](.github/ISSUE_TEMPLATE/1-proposal.yml) | 결정이 필요한 설계·구조 제안. 제목 접두어 `[제안]` |
| [`2-feature.yml`](.github/ISSUE_TEMPLATE/2-feature.yml) | 기능·작업과 완료 기준. 제목 접두어 `[기능]` |
| [`3-bug.yml`](.github/ISSUE_TEMPLATE/3-bug.yml) | 기대와 다른 동작, 재현 단계, 영향. 제목 접두어 `[버그]` |
| [`config.yml`](.github/ISSUE_TEMPLATE/config.yml) | 템플릿 없이 빈 이슈를 만들 수 있는지 설정 |
| [`pull_request_template.md`](.github/pull_request_template.md) | PR 제목·본문 작성 기본값 |
| [`CONTRIBUTING.md`](CONTRIBUTING.md) | 이슈·PR 작성과 공개 범위 안내 |

## 어느 양식이 적용되나요?

- 대상 저장소의 기본 브랜치가 유효한 자체 이슈 양식 또는 `.github/ISSUE_TEMPLATE/config.yml`을 갖고 있으면, 공용 이슈 양식 세트 전체를 사용하지 않습니다. 로컬 양식이 필요하면 유지할 양식과 설정을 함께 검토하세요.
- 대상 저장소에 자체 PR 템플릿이 있으면 그것이 우선합니다. 이슈 양식과 PR 템플릿의 적용 여부는 별개입니다.
- `proposal`, `feature`, `bug` 라벨은 대상 저장소에도 있어야 웹 양식에서 자동으로 붙습니다. 공용 양식은 라벨을 생성하지 않습니다. CLI/API로 작성할 때는 같은 정보를 본문에 명시하고 대상 라벨을 확인합니다.
- 이 저장소는 공개입니다. 내부 업무 절차, 고객 자료, 비공개 설정이나 연락처는 여기에 저장하지 않습니다. 양식이 채워졌다는 사실만으로 리뷰나 병합이 강제되지는 않습니다. 그런 보호는 GitHub Settings에서 관리합니다.

근거: [GitHub 기본 파일과 우선순위](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/creating-a-default-community-health-file), [이슈·PR 템플릿](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/about-issue-and-pull-request-templates).

## 양식 변경 확인

`ruby scripts/check-templates.rb`로 YAML 파싱, 공용 양식의 필수 항목과 라벨·제목, 빈 이슈 설정, PR 섹션 순서를 확인합니다. 이 검사는 조직 설정이나 GitHub UI의 상속 동작을 검증하지 않습니다. 변경이 병합된 뒤 자체 양식이 없는 저장소의 이슈 선택 화면과 PR 작성 화면에서 적용을 확인하세요.
