#!/usr/bin/python3
"""
a recursive function that queries the Reddit API,
parses the title of all hot articles,
and prints a sorted count of given keywords
(case-insensitive, delimited by spaces.
Javascript should count as javascript,
but java should not).
"""
import requests


def count_words(subreddit, word_list=[], after="", hot_list=[]):
    """The function"""

    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)

    headers = {"User-Agent": "linux:alu-scripting.api_advanced:v1.0.0"}
    params = {"after": after, "limit": 100}

    try:

        response = requests.get(
            url,
            headers=headers,
            params=params,
            allow_redirects=False)

        after = response.json().get("data").get("after")
        posts = response.json().get("data").get("children")
        [hot_list.append(post.get('data').get('title')) for post in posts]
        if after is not None:
            count_words(subreddit, word_list, hot_list, after)

        new_dict = {}
        word_list = set([word.lower() for word in word_list])
        for title in hot_list:
            for word in title.split():
                if word.lower() in new_dict:
                    new_dict[word.lower()] += 1
                else:
                    new_dict.update({word.lower(): 1})
        sorted_dictionary = {key: new_dict[key] for key in sorted(new_dict)}

        for key, value in sorted_dictionary:
            if (key in word_list) and value > 0:
                print("{}: {}".format(key, value))

    except Exception:
        return None
