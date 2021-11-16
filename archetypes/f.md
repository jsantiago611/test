---
title: "{{ .Name }}"
date: {{ .Date }}
weight: {{ replaceRE "^[0]+([1-9])" "$1" (replaceRE "([0-9]{2})-(.+)" "$1" .Name) }}
draft: true
description: ""
t:
---

