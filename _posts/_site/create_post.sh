#!/bin/bash

# Prompt the user for the filename
read -p "Enter the name of the file to create (without extension): " filename

# Content to write into the file
content="---
layout: post
title: "NewPil"
date: "$filename"
categories: blog
---
Some content here ...
"

# Append .markdown extension (you can change this if needed)
filename="${filename}-post.markdown"

# Create the file with the content
echo "$content" > "$filename"

# Confirm creation
echo "File '$filename' created with default content."