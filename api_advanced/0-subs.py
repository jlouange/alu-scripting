#!/usr/bin/python3
"""Get the number of subscribers of a subreddit."""
import requests


def number_of_subscribers(subreddit):
    """Return the total subscribers of a subreddit."""

    url = f"https://www.reddit.com/r/{subreddit}/about.json"

    headers = {
        "User-Agent": "linux:alu_subreddit_checker:v1.0 (by /u/ALU_STUDENT)"
        }

    try:

        response = requests.get(
            url,
            headers=headers,
            allow_redirects=False,
            timeout=10)

    except requests.RequestException:
        return 0

    if response.status_code != 200:
        return 0
    return response.json().get("data", {}).get("subscribers", 0)
