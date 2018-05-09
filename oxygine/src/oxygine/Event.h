#pragma once
#include "oxygine-include.h"
#include "EventDispatcher.h"
#include "Input.h"
#include "closure/closure.h"

#undef OUT

namespace oxygine
{
    class Event
    {
    public:
        enum { COMPLETE = sysEventID('C', 'M', 'P') };

        enum Phase
        {
            phase_capturing = 1,
            phase_target,
            phase_bubbling
        };

        Event(eventType Type, bool Bubbles = false) : listenerID(0), userData(0), type(Type), phase(phase_target), bubbles(Bubbles), stopsImmediatePropagation(false), stopsPropagation(false) {}
        virtual ~Event() {}

        int listenerID;
        void* userData;
        eventType type;
        Phase phase;
        bool bubbles;
        bool stopsImmediatePropagation;
        bool stopsPropagation;

        spObject userDataObject;

        /**The event target*/
        spEventDispatcher target;
        /**The object that is actively processing the Event object with an event listener*/
        spEventDispatcher currentTarget;

        void stopPropagation() { stopsPropagation = true; }
        void stopImmediatePropagation() { stopsPropagation = stopsImmediatePropagation = true; }

        /**
        removes self from EventDispatcher, usage example
        actor->addEventListener(...buttonClicked...);
        void buttonClicked(Event* ev)
        {
            ev->removeListener();
        }
        */
        void removeListener() { currentTarget->removeEventListener(listenerID); }
    };
}
