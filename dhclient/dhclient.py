
'''Package content for dhclient CLI tool'''
# dhclient_module/dclient.py

# Import the module properties
from dhclient import __app_name__, __version__

# The imports which we will use in our logic
import typer

from typing import Optional
from typing_extensions import Annotated

# Build our application
app = typer.Typer()


def _version_callback(value: bool) -> None:
    if value:
        # Print the application version information
        typer.echo(f"{__app_name__} v{__version__}")
        # Exit the application
        raise typer.Exit()


def _release_callback(value: bool) -> None:
    if value:
        # Implement your own code here for the release method
        typer.echo("Release was called .....")
        # Exit the application
        raise typer.Exit()


@app.callback()
# Documentation for this approach can be found here:
# https://typer.tiangolo.com/tutorial/commands/callback/
def main(
    # Print the version information:
    version: Optional[bool] = typer.Option(
        None,
        "--version",
        "-v",
        help="Show the application's version and exit.",
        callback=_version_callback,
        is_eager=True,
    ),
    release: Optional[bool] = typer.Option(
        None,
        "--release",
        "-r",
        help="Release the existing ip",
        callback=_release_callback
    )
) -> None:
    return
