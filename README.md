<a href="https://vettom.github.io/"><img src="https://vettom.github.io/img/vettom-banner.jpg" alt="vettom.github.io" ></a>
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
