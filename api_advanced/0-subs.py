#!/usr/bin/python3
"""
Reddit API subscriber information module.

This module provides a function that retrieves the total number
of subscribers for a specified subreddit using the Reddit API.
It returns zero when the subreddit is invalid or unavailable.
"""
import requests


def number_of_subscribers(subreddit):
    """Return the total subscribers of a subreddit."""

    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)

    headers = {
        "User-Agent": "linux:alu_subreddit_checker:v1.0 (by /u/alu_student)"
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
