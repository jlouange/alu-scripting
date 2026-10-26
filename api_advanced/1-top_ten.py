#!/usr/bin/python3
"""First 10 hot posts listed for a given subreddit."""
import requests


def top_ten(subreddit):

    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    params = {"limit": 10}
    headers = {"User-Agent": "linux: alu-api:V1.0 (by /u/alu_student)"}

    try:
        response = requests.get(
            url,
            headers=headers, params=params,
            allow_redirects=False)

        if response.status_code != 200:
            print(None)
            return

        data = response.json()

        posts = data['data']['children']
        for post in posts:
            print(post["data"]["title"])

    except Exception:
        print(None)
        return
