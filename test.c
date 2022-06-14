#include <gtk/gtk.h>
#include <gdk/gdkx.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>

void
fix_hint (GtkWidget *window)
{
    GdkWindow *gw;
    Display   *d;
    Window     xid;
    XWMHints  *wm_hints;

    gw = gtk_widget_get_window (window);
    d = GDK_WINDOW_XDISPLAY(gw);
    xid = GDK_WINDOW_XID(gw);

    wm_hints = XGetWMHints (d, xid);
    
    wm_hints->input = False;

    XSetWMHints (d, xid, wm_hints);

    XFree (wm_hints);
}

int
main (int argc, char *argv[])
{
    GtkWidget *w;
    gtk_init (&argc, &argv);
    w = gtk_window_new (GTK_WINDOW_TOPLEVEL);
    gtk_widget_show (w);
    fix_hint (w);
    gtk_main ();
}
