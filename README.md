# acre

**acre** is a game development library made in the Lua language focused on
state management. It is meant primarily to be versatile, such as being
usable on Lua versions supporting Lua 5.1 syntax, allowing pretty much
any type to be used, and more.

## Usage

**acre** revolves around tables. As such, *most* table syntax should be
applicable to acre if you wish to modify the state at runtime.

```lua
Acre = require("acre")

local state = {
   helloWorld = function(_)
      print("Hello, world!")
   end,
}

Acre:switchState(state)
-- You can pass a variable number of arguments as well!
Acre:callback("helloWorld")
```

## License

**acre** is licensed under the [MIT License](LICENSE).
