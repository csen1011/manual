<!DOCTYPE html>

<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="initial-scale=1, width=device-width">

        <!-- https://getbootstrap.com/ -->
        <link crossorigin="anonymous" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" rel="stylesheet">
        <script crossorigin="anonymous" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>

        <!-- https://jquery.com/ -->
        <script crossorigin="anonymous" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

        <!-- https://fontawesome.com/ -->
        <link crossorigin="anonymous" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" rel="stylesheet">

        <!-- https://www.ubuntu.com/ -->
        <link href="https://assets.ubuntu.com/v1/49a1a858-favicon-32x32.png" rel="icon" type="image/png">

        <link href="/static/rouge.css" rel="stylesheet">

        <script>

            

    $(function() {

        // Ensure all elements are styled the same
        $('pre').addClass('p-3');
        $('table').addClass('table');

        // Add toggles
        $('div.section').each(function(index, element) {

            // Prepare switch
            const $section = $(element);
            const id = 'switch-' + $section.attr('data-for');
            const $switch = $(
                '<div class="form-check form-switch mb-4">' +
                '<input id="' + id + '" class="form-check-input" type="checkbox">' +
                '<label class="form-check-label" for="' + id + '">less comfortable</label>' +
                '</div>'
            );

            // Find comfort levels
            const $less = $section.find('[data-less]');
            const $more = $section.find('[data-more]');

            // If a less-comfortable section exists, check it by default
            if ($less.length) {
                $switch.find('input').prop('checked', true);
            }

            // If only one comfort level exists, disable switch
            if (!$less.length || !$more.length) {
                $switch.find('input').prop('disabled', true);
            }

            // Listen for changes
            $switch.find('input').on('change', function() {
                if ($(this).is(':checked')) {
                    $less.removeClass('d-none');
                    $more.addClass('d-none');
                }
                else {
                    $less.addClass('d-none');
                    $more.removeClass('d-none');
                }
            }).trigger('change');

            // Add switch to DOM section has less-comfy level
            if ($section.find('[data-less]').length) {
                $section.prepend($switch);
            }
        });

        // Hide sections
        $('[data-hide]').each(function(index, element) {
            const $button = $('<button class="btn btn-outline-primary btn-sm" type="button">Show</button>');
            const id = $(element).attr('data-for');
            $(element).before($button);
            $button.on('click', function() {
                $(element).show();
                $(this).remove();
            });
            if (id) {
                $button.attr('data-for', id);
                $('#' + id).children('a').on('click', function() {
                    $button.trigger('click');
                });
            }
            $(element).hide();
        });

        // Show section if in hash
        $(window).on('hashchange', function() {
            const id = window.location.hash.slice(1);
            if (id) {
                $('button[data-for="' + id + '"]').trigger('click');
            }
        });
        $(window).trigger('hashchange');
    });



        </script>

        <script>

            $(function() {

                // Add borders to tables
                $('.table').addClass('table-bordered');

                // Enable popovers
                $('[data-bs-toggle="popover"]').each(function(index, element) {
                    new bootstrap.Popover(element, {
                        boundary: 'viewport',
                        html: true,
                        placement: 'bottom',
                        trigger: 'focus'
                    });
                });

                // Ensure all elements are styled the same
                $('h1').addClass('border-bottom fw-bold h2 mb-3 pb-2 pt-4');
                $('h2').addClass('fw-bold h3');

                // Ensure last heading can be anchored atop page
                $(window).resize(function() {
                    const top = $('h1').last().offset().top;
                    const margin = $(window).height() - ($('body').outerHeight() - top);
                    $('body').css('margin-bottom', Math.max(0, Math.ceil(margin)) + 'px');
                });
                $(window).trigger('resize');

                // Reveal body
                $('body').removeClass('invisible');
            });

        </script>

        <style>

            /* Style popovers */
            .popover {
                font-family: inherit;
                max-width: 100%;
            }

            /* Wrap long words (and URLs, whether linked or not), especially on mobile,
            but not in buttons and not in tables, which should instead scroll horizontally */
            * {
                word-break: break-word;
            }
            button, table * {
                word-break: normal;
            }

            /* Remove underlining */
            a {
                text-decoration: none;
            }
            a:hover {
                text-decoration: underline;
            }
            nav a:hover {
                text-decoration: none;
            }

            /* Match Gmail's yellow */
            a[data-bs-toggle=popover] {
                border-bottom: 2px solid rgb(252, 237, 193);
                box-shadow: inset 0 -2px 0 rgb(252, 237, 193);
                cursor: help;
            }
            a[data-bs-toggle=popover]:hover {
                background-color: rgb(252, 237, 193);
            }

            /* Match pre tags */
            code {
                color: inherit;
            }

            /* A la Jekyll theme */
            code, pre {
                background-color: #f8f9fa;
                border: 1px solid #dee2e6;
                padding: calc(.2rem - 3px) 0.2rem;
            }
            pre code {
                background-color: initial;
                border: initial;
                padding: initial;
            }

            /* Don't shrink these */
            code, pre {
                font-size: inherit;
            }

            /* Don't italicize */
            dl dt {
                font-style: normal;
            }

            /* Don't fill viewport */
            .table {
                width: inherit;
            }

        </style>

        <style>

            

    /* Match dl and p */
    button {
        margin-bottom: 1rem;
    }

    /* Ensure syntax-highlighted code scrolls on iOS, https://stackoverflow.com/a/49592093 */
    pre code {
        white-space: pre;
        word-wrap: normal;
    }
    pre code span {
        white-space: nowrap;
    }

    

        </style>

        <title>CS50 Manual Pages</title>

    </head>

    <body class="font-monospace invisible pb-5">

        <nav class="bg-dark navbar navbar-dark navbar-expand-xl px-4">
            <a class="navbar-brand" href="/"><i class="fas fa-list pe-3"></i>CS50 Manual Pages</a>
        </nav>

        <div class="container-fluid mt-2 px-4">
            

    <h1 id='name'><a href='#name'>NAME</a></h1><div class='section' data-for='name'><div data-more>
<p>sysctl.d - Configure kernel parameters at boot</p>
</div></div><h1 id='synopsis'><a href='#synopsis'>SYNOPSIS</a></h1><div class='section' data-for='synopsis'><div data-more>
<p>/etc/sysctl.d/*.conf</p>
<p>/run/sysctl.d/*.conf</p>
<p>/usr/lib/sysctl.d/*.conf</p>
<pre><code>key.name.under.proc.sys = some value
key/name/under/proc/sys = some value
key/middle.part.with.dots/foo = 123
key.middle/part/with/dots.foo = 123
-key.that.will.not.fail = value
key.pattern.*.with.glob = whatever
-key.pattern.excluded.with.glob
key.pattern.overridden.with.glob = custom</code></pre>
</div></div><h1 id='description'><a href='#description'>DESCRIPTION</a></h1><div class='section' data-for='description'><div data-more>
<p>At boot, <a href='/8/systemd-sysctl.service'>systemd-sysctl.service</a>(8) reads configuration files from the above directories to configure <a href='/8/sysctl'>sysctl</a>(8) kernel parameters.</p>
</div></div><h1 id='configuration-format'><a href='#configuration-format'>CONFIGURATION FORMAT</a></h1><div data-for='configuration-format' data-hide><div class='section' data-for='configuration-format'><div data-more>
<p>The configuration files contain a list of variable assignments, separated by newlines. Empty lines and lines whose first non-whitespace character is "#" or ";" are ignored.</p>
<p>Note that either "/" or "." may be used as separators within sysctl variable names. If the first separator is a slash, remaining slashes and dots are left intact. If the first separator is a dot, dots and slashes are interchanged. "kernel.domainname=foo" and "kernel/domainname=foo" are equivalent and will cause "foo" to be written to /proc/sys/kernel/domainname. Either "net.ipv4.conf.enp3s0/200.forwarding" or "net/ipv4/conf/enp3s0.200/forwarding" may be used to refer to /proc/sys/net/ipv4/conf/enp3s0.200/forwarding. A glob <a href='/7/glob'>glob</a>(7) pattern may be used to write the same value to all matching keys. Keys for which an explicit pattern exists will be excluded from any glob matching. In addition, a key may be explicitly excluded from being set by any matching glob patterns by specifying the key name prefixed with a "-" character and not followed by "=", see SYNOPSIS.</p>
<p>Any access permission errors and attempts to write variables not present on the local system are logged at debug level and do not cause the service to fail. Other types of errors when setting variables are logged with higher priority and cause the service to return failure at the end (after processing other variables). As an exception, if a variable assignment is prefixed with a single "-" character, failure to set the variable for any reason will be logged at debug level and will not cause the service to fail.</p>
<p>The settings configured with sysctl.d files will be applied early on boot. The network interface-specific options will also be applied individually for each network interface as it shows up in the system. (More specifically, net.ipv4.conf.*, net.ipv6.conf.*, net.ipv4.neigh.* and net.ipv6.neigh.*).</p>
<p>Many sysctl parameters only become available when certain kernel modules are loaded. Modules are usually loaded on demand, e.g. when certain hardware is plugged in or network brought up. This means that <a href='/8/systemd-sysctl.service'>systemd-sysctl.service</a>(8) which runs during early boot will not configure such parameters if they become available after it has run. To set such parameters, it is recommended to add an <a href='/7/udev'>udev</a>(7) rule to set those parameters when they become available. Alternatively, a slightly simpler and less efficient option is to add the module to <a href='/5/modules-load.d'>modules-load.d</a>(5), causing it to be loaded statically before sysctl settings are applied (see example below).</p>
</div></div></div><h1 id='configuration-directories-and-precedence'><a href='#configuration-directories-and-precedence'>CONFIGURATION DIRECTORIES AND PRECEDENCE</a></h1><div data-for='configuration-directories-and-precedence' data-hide><div class='section' data-for='configuration-directories-and-precedence'><div data-more>
<p>Configuration files are read from directories in /etc/, /run/, /usr/local/lib/, and /lib/, in order of precedence, as listed in the SYNOPSIS section above. Files must have the ".conf" extension. Files in /etc/ override files with the same name in /run/, /usr/local/lib/, and /lib/. Files in /run/ override files with the same name under /usr/.</p>
<p>All configuration files are sorted by their filename in lexicographic order, regardless of which of the directories they reside in. If multiple files specify the same option, the entry in the file with the lexicographically latest name will take precedence. Thus, the configuration in a certain file may either be replaced completely (by placing a file with the same name in a directory with higher priority), or individual settings might be changed (by specifying additional settings in a file with a different name that is ordered later).</p>
<p>Packages should install their configuration files in /usr/lib/ (distribution packages) or /usr/local/lib/ (local installs). Files in /etc/ are reserved for the local administrator, who may use this logic to override the configuration files installed by vendor packages. It is recommended to prefix all filenames with a two-digit number and a dash, to simplify the ordering of the files.</p>
<p>If the administrator wants to disable a configuration file supplied by the vendor, the recommended way is to place a symlink to /dev/null in the configuration directory in /etc/, with the same filename as the vendor configuration file. If the vendor configuration file is included in the initrd image, the image has to be regenerated.</p>
</div></div></div><h1 id='examples'><a href='#examples'>EXAMPLES</a></h1><div class='section' data-for='examples'><div data-more>
<p><strong>Example 1. Set kernel YP domain name</strong></p>
<p>/etc/sysctl.d/domain-name.conf:</p>
<p>.RS 4</p>
<pre><code>kernel.domainname=<a href="http://example.com">example.com</a></code></pre>
<p>.RE</p>
<p><strong>Example 2. Apply settings available only when a certain module is loaded (method one)</strong></p>
<p>/etc/udev/rules.d/99-bridge.rules:</p>
<p>.RS 4</p>
<pre><code>ACTION=="add", SUBSYSTEM=="module", KERNEL=="br_netfilter", \
      RUN+="/lib/systemd/systemd-sysctl --prefix=/net/bridge"</code></pre>
<p>.RE</p>
<p>/etc/sysctl.d/bridge.conf:</p>
<p>.RS 4</p>
<pre><code>net.bridge.bridge-nf-call-ip6tables = 0
net.bridge.bridge-nf-call-iptables = 0
net.bridge.bridge-nf-call-arptables = 0</code></pre>
<p>.RE</p>
<p>This method applies settings when the module is loaded. Please note that, unless the br_netfilter module is loaded, bridged packets will not be filtered by Netfilter (starting with kernel 3.18), so simply not loading the module is sufficient to avoid filtering.</p>
<p><strong>Example 3. Apply settings available only when a certain module is loaded (method two)</strong></p>
<p>/etc/modules-load.d/bridge.conf:</p>
<p>.RS 4</p>
<pre><code>br_netfilter</code></pre>
<p>.RE</p>
<p>/etc/sysctl.d/bridge.conf:</p>
<p>.RS 4</p>
<pre><code>net.bridge.bridge-nf-call-ip6tables = 0
net.bridge.bridge-nf-call-iptables = 0
net.bridge.bridge-nf-call-arptables = 0</code></pre>
<p>.RE</p>
<p>This method forces the module to be always loaded. Please note that, unless the br_netfilter module is loaded, bridged packets will not be filtered with Netfilter (starting with kernel 3.18), so simply not loading the module is sufficient to avoid filtering.</p>
<p><strong>Example 4. Set network routing properties for all interfaces</strong></p>
<p>/etc/sysctl.d/20-rp_filter.conf:</p>
<p>.RS 4</p>
<pre><code>net.ipv4.conf.default.rp_filter = 2
net.ipv4.conf.*.rp_filter = 2
-net.ipv4.conf.all.rp_filter
net.ipv4.conf.hub0.rp_filter = 1</code></pre>
<p>.RE</p>
<p>The <strong>rp_filter</strong> key will be set to "2" for all interfaces, except "hub0". We set net.ipv4.conf.default.rp_filter first, so any interfaces which are added <code>later</code> will get this value (this also covers any interfaces detected while were running). The glob matches any interfaces which were detected <code>earlier</code>. The glob will also match net.ipv4.conf.all.rp_filter, which we dont want to set at all, so it is explicitly excluded. And "hub0" is excluded from the glob because it has an explicit setting.</p>
</div></div><h1 id='see-also'><a href='#see-also'>SEE ALSO</a></h1><div class='section' data-for='see-also'><div data-more>
<p><a href='/1/systemd'>systemd</a>(1), <a href='/8/systemd-sysctl.service'>systemd-sysctl.service</a>(8), <a href='/1/systemd-delta'>systemd-delta</a>(1), <a href='/8/sysctl'>sysctl</a>(8), <a href='/5/sysctl.conf'>sysctl.conf</a>(5), <a href='/8/modprobe'>modprobe</a>(8)</p></div></div>


        </div>

    </body>

</html>