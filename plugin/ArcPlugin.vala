/*
 * This file is part of arc-desktop
 * 
 * Copyright 2015 Ikey Doherty <ikey@solus-project.com>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 */

namespace Arc
{

/**
 * ArcPlugin
 */
public interface Plugin : GLib.Object
{
    /**
     * arc_plugin_get_panel_widget:
     * 
     * Returns: (transfer full): A Gtk+ widget for use on the ArcPanel
     */
    public abstract Arc.Applet get_panel_widget();
}

/**
 * ArcApplet
 */
public class Applet : Gtk.Bin
{

    /**
     * arc_applet_construct:
     *
     * Construct a new BudgieApplet
     *
     * Returns: (transfer full): A new BudgieApplet instance
     */
    public Applet() { }

    /**
     * arc_applet_register_popover:
     *
     * Let the owning panel know we need this popover registered
     *
     * @param widget Widget connected to the popover
     * @param popover Popover to register
     */
    public signal void register_popover(Gtk.Widget? widget, Gtk.Popover? popover);

    /**
     * arc_applet_unregister_popover
     *
     * Let the owning panel know we'd like to unregister the popover
     *
     * @param widget Widget connected to the popover
     */
    public signal void unregister_popover(Gtk.Widget? widget);
}

}
