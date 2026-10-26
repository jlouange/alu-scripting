#!/usr/bin/python3
"""First 10 hot posts listed for a given subreddit."""
import requests


def top_ten(subreddit):
    """Print the titles of the first ten hot posts."""

    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    params = {"limit": 10}
    # headers = {"User-Agent": "linux: alu-api:V1.0 (by /u/alu_student)"}
    headers = {"User-Agent": "Mozilla/5.0"}

    try:
        response = requests.get(
            url,
            headers=headers, params=params,
            allow_redirects=False)

        if response.status_code != 200:
            print(None)
            return

        data = response.json()

        posts = data.get('data').get('children')
        for post in posts:
            post.get("data").get("title")
        print("OK")

    except Exception:
        print(None)
        return
