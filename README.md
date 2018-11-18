# ExReason




Building the boilerplate based on 
[this](https://craigc0de.blogspot.com/2018/07/phoenix-reasonreact-full-stack.html)
tutorial

```
cd assets  
yarn add bs-platform --dev
yarn add react react-dom reason-react 
```

Add the bsconfig.json to connect to redex:

```
{
  "name": "ex_reason",
  "bsc-flags": ["-bs-no-version-header", "-bs-super-errors"],
  "reason": {"react-jsx": 2},
  "bs-dependencies": ["reason-react"],
  "sources": [
   {
    "dir": "js",
    "subdirs": true
   }
  ],
  "package-specs": {
   "module": "commonjs",
   "in-source": true
  },
  "suffix": ".bs.js",
  "refmt": 3
 }
```


Add to your package.json:

```
  "scripts": {
    "build": "bsb -make-world",
    "start": "bsb -make-world -w",
    "clean": "bsb -clean-world"
  },
```

And now:

```
yarn build
```

To have auto-compile, change your webpack.config.js:
```
entry: {
    './js/app.js': ['./js/root.bs.js'].concat(glob.sync('./vendor/**/*.js'))
},
```

Edit your app.html.eex

```
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>ExReason · Phoenix Framework</title>
    <link rel="stylesheet" href="<%= Routes.static_path(@conn, "/css/app.css") %>"/>
  </head>
  <body>
    <div id="root"></div>  
    <script type="text/javascript" src="<%= Routes.static_path(@conn, "/js/app.js") %>"></script>
  </body>
</html>
```

To be able to start back and front end watchers, create a
ex_reason/lib/mix/tasks/start.ex script:

```
defmodule Mix.Tasks.ExReason.Start do
  use Mix.Task
  @shortdoc "For Development - watches changes in Phoenix and ReasonML code."
  @moduledoc """  
   For Development - watches changes in Phoenix and ReasonML code.  
  """
  def run(_args) do
   tasks = [
    Task.async(fn -> Mix.shell.cmd "cd assets && yarn start" end),
    Task.async(fn -> Mix.shell.cmd "iex -S mix phx.server" end),
   ]
   Enum.map(tasks, &Task.await(&1, :infinity))
  end
end

```

Now start:
```
mix ex_reason.start
```


To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
