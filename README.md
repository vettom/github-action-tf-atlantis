![vettom.pages.dev banner](https://vettom-images.s3.eu-west-1.amazonaws.com/logo/vettom-banner.jpg)
# Testing Terraform automation with Atlantis

# Setting up
- Create Access token in Github
- Generate a >24 char Webhook secret. 
- Download Atlantis
- Start Atlantis

```bash
atlantis server \
--atlantis-url="$URL" \
--gh-user="$USERNAME" \
--gh-token="$TOKEN" \
--gh-webhook-secret="$SECRET" \
--repo-allowlist="$REPO_ALLOWLIST"
```
- Create Webhook in Github $URL/events
    - Select permission as per documentation
- Configure Repo


## Testing trigger
