# Wooka

Operations chatbot which currently uses ZULIP as an interface,
provides quick addition, listing, searching and simple editing
for resources.

Plugins developed to operate on this bot follow the scheme:

```
<prefix><service> <resource> <action> <values> <args>
```

See the plugins documentation for more usage information.


## Environment variables

Variable | Required | Example | Description
---|---|---|---
DISCORD_KEY | Y | - | Obtained [here](https://discord.com/developers/applications)
BOT_ADMINS | Y | username#4356,roots#3333 | List splited by `,` with username and number on Discord
CHATROOM_PRESENCE | Y | #channelname1,#channelname2 | List splited by `,` with channels on Discord
SENTRY_DSN | N | [Sentry DSN docs](https://docs.sentry.io/product/sentry-basics/dsn-explainer/) | To stack and view errors on Sentry platform

## Plugins

Currently active plugins are: 

- [err-maya-plugin](https://github.com/droposhado/err-maya-plugin)
- [err-wooka-version](extra_plugins/err-wooka-version)

## License

See [LICENSE](LICENSE)
