# 0x06. Regular expressions

![Regex](https://coderpad.io/wp-content/uploads/2022/04/coderpad-regex-the-complete-guide.jpg)

## Background Context

For this project, you have to build your regular expression using Oniguruma, a regular expression library that which is used by Ruby by default. Note that other regular expression libraries sometimes have different properties.

Because the focus of this exercise is to play with regular expressions (regex), here is the Ruby code that you should use, just replace the regexp part, meaning the code in between the //:

```bash
sylvain@ubuntu$ cat example.rb
#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
sylvain@ubuntu$
sylvain@ubuntu$ ./example.rb 127.0.0.2
127.0.0.2
sylvain@ubuntu$ ./example.rb 127.0.0.1
127.0.0.1
sylvain@ubuntu$ ./example.rb 127.0.0.a
```

## Resources

### Read or watch:

* [Regular expressions - basics](https://intranet.alxswe.com/rltoken/rtBWhqR4L-6p9PRwzlNLug)
* [Regular expressions - advanced](https://intranet.alxswe.com/rltoken/grJS5VDnUKBYwDpBTM7yCg)
* [Rubular is your best friend](https://intranet.alxswe.com/rltoken/RGkVuw1lZ_hoCCbLsiOAhg)
* [Use a regular expression against a problem: now you have 2 problems](https://intranet.alxswe.com/rltoken/Vwm8lpMUGa4x_FBtlyUQ8g)
* [Learn Regular Expressions with simple, interactive exercises](https://intranet.alxswe.com/rltoken/XsQ6rzS1uy-E6bnswUqIKg)

## Regex

**What is Regular Expressions (Regex)?**

Regex is a powerful tool for pattern matching in text. It allows you to define specific patterns of characters, and then search for and manipulate text that matches those patterns. Think of it as a search language specifically designed for text.

**Basic Components of Regex:**

* **Characters:** The most basic elements of a regex. They can be literal characters (e.g., "a", "1", "@") or special characters (e.g., "." for any character, "^" for beginning of line, "$" for end of line).
* **Quantifiers:** Specify how many times a character or group should appear.
    - `*`: Zero or more times
    - `+`: One or more times
    - `?`: Zero or one time
    - `{n}`: Exactly n times
    - `{n,}`: At least n times
    - `{n,m}`: Between n and m times
* **Character Classes:** Define sets of characters.
    - `[abc]`: Matches any of the characters a, b, or c
    - `[^abc]`: Matches any character except a, b, or c
    - `\d`: Matches any digit
    - `\w`: Matches any word character (alphanumeric or underscore)
    - `\s`: Matches any whitespace character
* **Anchors:** Specify positions within a string.
    - `^`: Beginning of line
    - `$`: End of line
    - `\b`: Word boundary

**Practical Examples:**

1. **Matching Email Addresses:**
   ```regex
   \w+@\w+\.\w+
   ```
   This regex matches email addresses with at least one word character before the @ symbol, at least one word character after the @ symbol, and at least one word character after the dot.

2. **Extracting Phone Numbers:**
   ```regex
   \d{3}-\d{3}-\d{4}
   ```
   This regex matches phone numbers in the format "XXX-XXX-XXXX".

3. **Finding URLs:**
   ```regex
   http(s)://\w+\.\w+
   ```
   This regex matches URLs that start with "http" or "https", followed by at least one word character, a dot, and at least one word character.

**Tips for Using Regex:**

* **Start simple:** Begin with basic patterns and gradually add complexity.
* **Test your regex:** Use online tools or your programming language's built-in regex features to test your patterns.
* **Be specific:** Avoid overly broad patterns that might match unintended text.
* **Consider edge cases:** Think about potential variations and exceptions in your data.
* **Use online resources:** There are many online tutorials, reference guides, and regex testers available to help you learn and practice.
