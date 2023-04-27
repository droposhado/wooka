# Wooka

Operations chatbot which currently uses Discord as an interface,
provides quick addition, listing, searching and simple editing
for resources.

Plugins developed to operate on this bot follow the scheme:

```
<prefix><service> <resource> <action> <values> <args>
```

See the plugins documentation for more usage information.

## Invitation link

You need this link to add the bot to your server if it is private,
it must be accessed via browser and selected the server where you are owner/admin.

```
https://discord.com/oauth2/authorize?client_id=9999999999&scope=bot&permissions=8
```

Where 9999999999 is `client_id`, obtained on `dev dashboard > app > bot > oauth`.

Notice that 8 represents admin and this must be set correctly,
in the future I will check only the necessary permissions,
if you want you can open a PR with these modifications

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
