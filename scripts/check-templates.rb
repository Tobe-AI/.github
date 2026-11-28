require "yaml"

Encoding.default_external = Encoding::UTF_8 # 템플릿은 UTF-8이므로 C 로캘에서도 같은 결과를 냅니다.

root = File.expand_path("..", __dir__)
issue_dir = File.join(root, ".github", "ISSUE_TEMPLATE")
forms = {
  "1-proposal.yml" => ["[제안] ", "proposal", %w[summary problem proposal why]],
  "2-feature.yml" => ["[기능] ", "feature", %w[goal why done]],
  "3-bug.yml" => ["[버그] ", "bug", %w[what expected steps severity]]
}

forms.each do |name, (prefix, label, required_fields)|
  form = YAML.safe_load(File.read(File.join(issue_dir, name)))
  unless form.fetch("name").strip.length >= 3 && !form.fetch("description").strip.empty?
    abort "#{name}: missing chooser name or description"
  end
  unless form.fetch("title") == prefix && form.fetch("labels") == [label]
    abort "#{name}: title prefix or label changed"
  end

  fields = form.fetch("body").reject { |field| field.fetch("type") == "markdown" }
  ids = fields.map { |field| field.fetch("id") { abort "#{name}: field without id" } }
  abort "#{name}: duplicate field id" unless ids.uniq == ids
  actual = fields.select { |field| field.dig("validations", "required") == true }
                 .map { |field| field.fetch("id") }
  abort "#{name}: required fields changed (#{actual.join(', ')})" unless actual == required_fields
end

config = YAML.safe_load(File.read(File.join(issue_dir, "config.yml")))
abort "config.yml: blank issue option changed" unless config.fetch("blank_issues_enabled") == true

pr = File.read(File.join(root, ".github", "pull_request_template.md"))
sections = pr.scan(/^## (.+)$/).flatten
expected = ["무엇을 바꿨나", "왜", "확인한 것", "리뷰어가 특히 봐 줬으면 하는 곳", "관련 이슈"]
abort "pull_request_template.md: section names or order changed" unless sections == expected

puts "PASS: 3 issue forms, blank issue option, and PR section order"
