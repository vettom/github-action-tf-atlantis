# Sample repo

```yaml
repos:
- id: /.*/
  apply_requirements: [approved, mergeable]
  allowed_overrides: [workflow]
  workflow: myworkflow

# workflows lists server-side custom workflows
workflows:
  myworkflow:
    plan:
      steps:
      # - env:
      #     name: VAULT_TOKEN
      #     command: './something.sh'
      - init
      - run: echo "Dir plan" && pwd && ls && echo "-----------------\n"
      - run: echo "Running tflint init..." && tflint -c ./tflint.hcl --init
      - run: echo "Running tflint..." && tflint -c ./tflint.hcl
      # - run: echo "Running tfsec..." && tfsec --no-colour --soft-fail --concise-output --minimum-severity MEDIUM
      - plan
      # - run: terraform$ATLANTIS_TERRAFORM_VERSION show -json $PLANFILE > plan.json
      # - run: echo "Running conftest..." && conftest test -p /etc/atlantis/policy/ --no-color plan.json
    apply:
      steps:
      - apply
```
