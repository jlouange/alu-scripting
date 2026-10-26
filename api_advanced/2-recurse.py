#!/usr/bin/python3
import requests


""" recursive function that queries the Reddit API and returns
    a list containing the titles of all hot articles for a given subreddit"""


def recurse(subreddit, hot_list=[], after=""):

    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)

    headers = {"User-Agent": "linux:alu-scripting.api_advanced:v1.0.0"}
    params = {"after": after, "limit": 100}

    try:

        response = requests.get(url,
                                headers=headers,
                                params=params,
                                allow_redirects=False)
        after = response.json().get("data").get("after")
        posts = response.json().get("data").get("children")
        [hot_list.append(post.get("data").get("title")) for post in posts]

        if after is not None:
            return recurse(subreddit, hot_list, after)

        return hot_list

    except Exception as e:
        return None
