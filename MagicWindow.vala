/* Nothing yet. */
fix_hint (MagicWindow *window)
{
    GdkWindow *gw;
    Display   *d;
    Window     xid;
    XWMHints  *wm_hints;

    gw = gtk_widget_get_window (GTK_WIDGET(window));
    d = GDK_WINDOW_XDISPLAY(gw);
    xid = GDK_WINDOW_XID(gw);

    wm_hints = XGetWMHints (d,xid);
    
    wm_hints->input = False;

    XSetWMHints (d, xid, wm_hints);

    XFree (wm_hints);
}