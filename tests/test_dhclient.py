
# Import the required modules
from typer.testing import CliRunner
from dhclient import __app_name__, __version__, dhclient

# Create a new test runner instance
runner = CliRunner()


def test_version():
    # Test the version API
    result = runner.invoke(dhclient.app, ["--version"])
    assert result.exit_code == 0
    assert f"{__app_name__} v{__version__}\n" in result.stdout


def test_release():
    result = runner.invoke(dhclient.app, ["--release"])
    assert result.exit_code == 0
    assert "Release was called ....." in result.stdout
