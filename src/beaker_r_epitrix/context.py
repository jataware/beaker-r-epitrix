
from beaker_bunsen.bunsen_context import BunsenContext

from .agent import EpitrixAgent


class EpitrixContext(BunsenContext):

    agent_cls = EpitrixAgent
    enabled_subkernels = ["rlang"]

    @classmethod
    def default_payload(cls) -> str:
        return "{}"

