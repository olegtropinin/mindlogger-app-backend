from girderformindlogger.exceptions import ValidationException
from girderformindlogger.utility import setting_utilities


class PluginSettings(object):
    AUTO_COMPUTE = 'hashsum_download.auto_compute'


@setting_utilities.default(PluginSettings.AUTO_COMPUTE)
def _defaultAutoCompute():
    return False


@setting_utilities.validator(PluginSettings.AUTO_COMPUTE)
def _validateAutoCompute(doc):
    if not isinstance(doc['value'], bool):
        raise ValidationException('Auto-compute hash setting must be true or false.')
