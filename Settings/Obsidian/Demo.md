> [!abstract]
> This page demonstrates features you could not get otherwise. It is the only source of information that exists and therefore crucial for our mission to succeed.

Open Sandbox vault to see more (Ctrl+P, filter `sandbox`)

## Text mode

Monospace font can be configured in one view, while non monospaced font in another:
MMMMM
iiiii

This is normal text
**This is bold text**
*This is cursive text (italics)*
==We can highlight text==
~~This is strikethrough~~
<s>This is also striketrough</s>
<u>This is underlined text</u>
***bold and italics can be combined***
~~**Strikethrough and bold**~~
~~*Strikethrough and italics*~~
We can not combine <u>html defined types</u> with **markdown defined types**. Instead, use html to combine e.g. <u><b>underline + bold</b></u>.
## Lists
We have structured ordered lists with up to 7 levels offering different bullet points:
* Level 1
    * Level 2
        * Level 3
            * Level 4
                * Level 5
                    * Level 6
                        * Level 7

Then we have numbered lists:
1. This
2. That
    1. sub this
    2. sub that
3. There
    1. sub
        1. sub sub
        2. sub sub
            1. sub sub sub
                1. ...and so on

And finally, checkboxes are a specific type of list:
* [ ] unchecked
* [x] checked
## Code
Code can be `inlined code` inlined.
Code blocks provide a copy button.
```Bash
function hello-world() {
    echo "Hello World"
    return 0
}
hello-world | grep hello
exit 0
```
```json
{
    "name": "value",
    "list": [
        {
            "key": "value"
        }
    ]
}
```

With the right theme and font configuration, font ligatures also work:
```
block != that -> next
```
`block != that -> next`
block != that -> next

## Quotes
> I, the almighty Unknowing, do say things.
> \- Who? And When?
## Links
[[Wikimedia type link]]
[External link](https://example.com)
## Horizontal bar
---
## Footnotes
This is a simple footnote[^1].
Use a named footnoed[^named]
Inline a footnote like this. ^[inlined footnote]
## Tables
Table rows are colorized in alternating order and the header row can be clearly distinguished:

| Heading 1        | Heading 2         | More heading |
| ---------------- | ----------------- | ------------ |
| Nice table       | write what I want | example      |
| another line     | another content   | row          |
| Repeating myself | It's a nice day   | content      |
| And so on        | we go             |              |
## Callouts
So-called "Callouts" create special boxes:

> [!info]
> Provide some info

> [!warning]
> Warn about things

> [!note]
> Add some notes

> [!tip]
> I'll provide a hint.

> [!danger]
> That's also dangerous

> [!error]
> Callouts can have aliases. For example, `error` is an alias to `danger`.

> [!examples]
> * this one
> * or this one

## Tags
Last, we'll add tags.
#tag #example #demo
## Headings
Finally, six distinct levels of headings can be provided, each with a distinct color and font size:
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6

[^1]: What is referenced.
[^named]: Footnote with a name.
