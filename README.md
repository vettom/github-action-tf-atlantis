# Testing Terraform automation with Atlantis

# Setting up
- Create Access token in Github
- Generate a >24 char Webhook secret. 
- Download Atlantis
- Start Atlantis

```bash
URL="http://atlantis.vettom.uk"
USERNAME=<user>
TOKEN="github_patxxxxxx"
SECRET=">24 char secret"
REPO_ALLOWLIST="github.com/vettom/github-action-tf-atlantis"

atlantis server \
--atlantis-url="$URL" \
--gh-user="$USERNAME" \
--gh-token="$TOKEN" \
--gh-webhook-secret="$SECRET" \
--repo-allowlist="$REPO_ALLOWLIST"
```
- Create Webhook in Github $URL/events
    - Select permission as per documentation
    - Webhook URL <http://atlantis.vettom.uk:4141/events>



## Atlantis Advanced
Add a workflow to run additional checks
- Create [repos.yaml](repos_template.md) and pass it as argument to atlantis
- Install [tflint](https://github.com/terraform-linters/tflint)
- configure [tflint plugins](https://github.com/terraform-linters/tflint#getting-started) in .tflint.hcl file
- Custom config test using [conftest](https://www.conftest.dev/)

```bash
atlantis server \
--atlantis-url="$URL" \
--gh-user="$USERNAME" \
--gh-token="$TOKEN" \
--gh-webhook-secret="$SECRET" \
--repo-allowlist="$REPO_ALLOWLIST" \
--repo-config=./repos.yaml

```

