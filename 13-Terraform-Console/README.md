```
amit@Azure:~/terraform-EY-2021-Dec-12$ terraform console
> 2 + 4
6
> 10 - 1
9
> 5*3
15
> 20/5
4
> contain(list("orange","mango","apple"),"kiwi")

> ╷
│ Error: Call to unknown function
│
│   on <console-input> line 1:
│   (source code not available)
│
│ There is no function named "contain". Did you mean "contains"?
╵

> ^C
amit@Azure:~/terraform-EY-2021-Dec-12$ terraform console
> contains(list("orange","mango","apple"),"kiwi")

> ╷
│ Error: Error in function call
│
│   on <console-input> line 1:
│   (source code not available)
│
│ Call to function "list" failed: the "list" function was deprecated in Terraform v0.12 and is no longer available; use tolist([ ... ]) syntax to write a literal list.
╵

> ^C
amit@Azure:~/terraform-EY-2021-Dec-12$ terraform console
> contains(tolist("orange","mango","apple"),"kiwi")
╷
│ Error: Too many function arguments
│
│   on <console-input> line 1:
│   (source code not available)
│
│ Function "tolist" expects only 1 argument(s).
╵

>
> contains(tolist(["orange","mango","apple"]),"kiwi")
false
> contains(tolist(["orange","mango","apple"]),"apple")
true
> length("a,b,c")
5
> length(split(",", "a,b,c"))
3
> length(map("key","val"))

> ╷
│ Error: Error in function call
│
│   on <console-input> line 1:
│   (source code not available)
│
│ Call to function "map" failed: the "map" function was deprecated in Terraform v0.12 and is no longer available; use tomap({ ... }) syntax to write a literal map.
╵

> ^C
amit@Azure:~/terraform-EY-2021-Dec-12$ terraform console
> length(tomap(["key","val"]))

> ╷
│ Error: Invalid function argument
│
│   on <console-input> line 1:
│   (source code not available)
│
│ Invalid value for "v" parameter: cannot convert tuple to map of any single type.
╵

> ^C
amit@Azure:~/terraform-EY-2021-Dec-12$ terraform console
> length(tomap({"key","val"}))

> ╷
│ Error: Missing attribute value
│
│   on <console-input> line 1:
│   (source code not available)
│
│ Expected an attribute value, introduced by an equals sign ("=").
╵

> ^C
amit@Azure:~/terraform-EY-2021-Dec-12$ terraform console
> length(tomap(["key"="val"]))

> ╷
│ Error: Missing item separator
│
│   on <console-input> line 1:
│   (source code not available)
│
│ Expected a comma to mark the beginning of the next item.
╵

>

>

> length(tomap({"key" = "val"}))
1
> merge(tomap({"key" = "val"}), tomap({"test" = "abc"}))
tomap({
  "key" = "val"
  "test" = "abc"
})
> exit

```
