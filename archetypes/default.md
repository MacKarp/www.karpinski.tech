---
title: "{{ replace .Name "-" " " | title }}"

date: {{ .Date }}
url: /{{ .Name }}/
image: images/2023-thumbs/{{ .Name }}.jpg
categories:
  - Linux
  - Windows
  - Networking
tags:
  - Ubuntu
draft: false
---