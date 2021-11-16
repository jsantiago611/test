---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date | dateFormat "2006-01-02" }}T12:00:00-05:00
weight: {{ replaceRE "^[0]+([1-9])" "$1" (replaceRE "([0-9]{2})-(.+)" "$1" .Name) }}
draft: true
description: ""
images:
- https://assets.loupbrun.ca/journal/img/n/feature-{{ .File.BaseFileName }}.jpg
t:
---

