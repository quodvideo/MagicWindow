class MagicWindow: Gtk.Window {
    private void fix_hint () {
        /* Get the GdkWindow of the widget. */
        /* Get the Display* of the GdkWindow */
        /* Get the XID of the GdkWindow */
        /* Get the XWMHints of the XID */
        /* change the input hint to False */
        /* Set the XWMHints of the XID */
    }
    /* Override the methods that lead to Gdk changing the hint so they fix the hint after the normal call. */
}
