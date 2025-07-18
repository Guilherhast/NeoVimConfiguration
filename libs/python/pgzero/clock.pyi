"""
This type stub file was generated by pyright.
"""

from functools import total_ordering

"""Clock/event scheduler.

This is a Pygame implementation of a scheduler inspired by the clock
classes in Pyglet.

"""
__all__ = ['Clock', 'schedule', 'schedule_interval', 'unschedule']
def weak_method(method): # -> Callable[[], Any | None]:
    """Quick weak method ref in case users aren't using Python 3.4"""
    ...

def mkref(o): # -> Callable[[], Any | None] | ReferenceType[Any]:
    ...

@total_ordering
class Event:
    """An event scheduled for a future time.

    Events are ordered by their scheduled execution time.

    """
    def __init__(self, time, cb, repeat=...) -> None:
        ...
    
    def __lt__(self, ano) -> bool:
        ...
    
    def __eq__(self, ano) -> bool:
        ...
    
    @property
    def callback(self): # -> Any | None:
        ...
    


class Clock:
    """A clock used for event scheduling.

    When tick() is called, all events scheduled for before now will be called
    in order.

    tick() would typically be called from the game loop for the default clock.

    Additional clocks could be created - for example, a game clock that could
    be suspended in pause screens. Your code must take care of calling tick()
    or not. You could also run the clock at a different rate if desired, by
    scaling dt before passing it to tick().

    """
    def __init__(self) -> None:
        ...
    
    def schedule(self, callback, delay): # -> None:
        """Schedule callback to be called once, at `delay` seconds from now.

        :param callback: A parameterless callable to be called.
        :param delay: The delay before the call (in clock time / seconds).

        """
        ...
    
    def schedule_unique(self, callback, delay): # -> None:
        """Schedule callback to be called once, at `delay` seconds from now.

        If it was already scheduled, postpone its firing.

        :param callback: A parameterless callable to be called.
        :param delay: The delay before the call (in clock time / seconds).

        """
        ...
    
    def schedule_interval(self, callback, delay): # -> None:
        """Schedule callback to be called every `delay` seconds.

        The first occurrence will be after `delay` seconds.

        :param callback: A parameterless callable to be called.
        :param delay: The interval in seconds.

        """
        ...
    
    def unschedule(self, callback): # -> None:
        """Unschedule the given callback.

        If scheduled multiple times all instances will be unscheduled.

        """
        ...
    
    def each_tick(self, callback): # -> None:
        """Schedule a callback to be called every tick.

        Unlike the standard scheduler functions, the callable is passed the
        elapsed clock time since the last call (the same value passed to tick).

        """
        ...
    
    def tick(self, dt): # -> None:
        """Update the clock time and fire all scheduled events.

        :param dt: The elapsed time in seconds.

        """
        ...
    


clock = ...
tick = ...
schedule = ...
schedule_interval = ...
schedule_unique = ...
unschedule = ...
each_tick = ...
