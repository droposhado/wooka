"""Read and display build information to Wooka"""

import json
import os

from errbot import BotPlugin, botcmd

ROOT = os.path.dirname(os.path.realpath(__file__))


class WookaVersionPlugin(BotPlugin):
    """
    Base class to version plugin
    """

    @botcmd
    def wooka_version(self, msg, args):
        """
        Read and send to chat build info
        """

        path = os.path.join(ROOT, 'version.json')

        with open(path, mode='r', encoding='utf8') as version_file:

            file_string = version_file.read()

            content = json.loads(file_string)

        sha_code = content.get('sha')
        ref = content.get('ref')

        response = f"SHA: {sha_code}\nREF: {ref}"
        return response
