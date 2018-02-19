
## Requirements
- Docker

## Usage
```sh
# clone repository
git clone https://github.com/metaVariable/slack-delete.git

# build docker image
docker build . -t slack-delete

# delete uploaded files using api
docker run -it --rm slack-delete \
    python slack_delete.py --token $YOUR_API_TOKEN
```


- `--token $YOUR_API_TOKEN`
    - Specifies the OAuth token used for authentication, created at (https://api.slack.com/docs/oauth-test-tokens)|
- `--days $DAYS`
    - Delete files older than x days (optional)
- `--count $COUNT`
    - Max amount of files to delete at once (optional)

## SAMPLE
```
$ docker run -it --rm slack-delete python slack_delete.py --token $API_TOKEN
[*] Fetching file list..
[i] 2 files found
[i] 2 files to toast, saving 1740098 bytes
[*] Deleting files..
[+] Deleted 1 of 2 - F9B2YE090 True
[+] Deleted 2 of 2 - F9AD63K1N True
[*] Done
```

Thanks to [@technmsg/slack_delete.py](https://gist.github.com/technmsg/76c8120425df71a7058e986cca5e4b3f)