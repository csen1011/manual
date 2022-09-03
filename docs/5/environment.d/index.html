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
<p>environment.d - Definition of user service environment</p>
</div></div><h1 id='synopsis'><a href='#synopsis'>SYNOPSIS</a></h1><div class='section' data-for='synopsis'><div data-more>
<p>~/.config/environment.d/*.conf</p>
<p>/etc/environment.d/*.conf</p>
<p>/run/environment.d/*.conf</p>
<p>/usr/lib/environment.d/*.conf</p>
<p>/etc/environment</p>
</div></div><h1 id='description'><a href='#description'>DESCRIPTION</a></h1><div class='section' data-for='description'><div data-more>
<p>Configuration files in the environment.d/ directories contain lists of environment variable assignments for services started by the systemd user instance. <a href='/8/systemd-environment-d-generator'>systemd-environment-d-generator</a>(8) parses them and updates the environment exported by the systemd user instance. See below for an discussion of which processes inherit those variables.</p>
<p>It is recommended to use numerical prefixes for file names to simplify ordering.</p>
<p>For backwards compatibility, a symlink to /etc/environment is installed, so this file is also parsed.</p>
</div></div><h1 id='configuration-directories-and-precedence'><a href='#configuration-directories-and-precedence'>CONFIGURATION DIRECTORIES AND PRECEDENCE</a></h1><div data-for='configuration-directories-and-precedence' data-hide><div class='section' data-for='configuration-directories-and-precedence'><div data-more>
<p>Configuration files are read from directories in /etc/, /run/, /usr/local/lib/, and /lib/, in order of precedence, as listed in the SYNOPSIS section above. Files must have the ".conf" extension. Files in /etc/ override files with the same name in /run/, /usr/local/lib/, and /lib/. Files in /run/ override files with the same name under /usr/.</p>
<p>All configuration files are sorted by their filename in lexicographic order, regardless of which of the directories they reside in. If multiple files specify the same option, the entry in the file with the lexicographically latest name will take precedence. Thus, the configuration in a certain file may either be replaced completely (by placing a file with the same name in a directory with higher priority), or individual settings might be changed (by specifying additional settings in a file with a different name that is ordered later).</p>
<p>Packages should install their configuration files in /usr/lib/ (distribution packages) or /usr/local/lib/ (local installs). Files in /etc/ are reserved for the local administrator, who may use this logic to override the configuration files installed by vendor packages. It is recommended to prefix all filenames with a two-digit number and a dash, to simplify the ordering of the files.</p>
<p>If the administrator wants to disable a configuration file supplied by the vendor, the recommended way is to place a symlink to /dev/null in the configuration directory in /etc/, with the same filename as the vendor configuration file. If the vendor configuration file is included in the initrd image, the image has to be regenerated.</p>
</div></div></div><h1 id='configuration-format'><a href='#configuration-format'>CONFIGURATION FORMAT</a></h1><div data-for='configuration-format' data-hide><div class='section' data-for='configuration-format'><div data-more>
<p>The configuration files contain a list of "<code>KEY</code>=<code>VALUE</code>" environment variable assignments, separated by newlines. The right hand side of these assignments may reference previously defined environment variables, using the "${OTHER_KEY}" and "$OTHER_KEY" format. It is also possible to use "${<code>FOO</code>:-<code>DEFAULT_VALUE</code>}" to expand in the same way as "${<code>FOO</code>}" unless the expansion would be empty, in which case it expands to <code>DEFAULT_VALUE</code>, and use "${<code>FOO</code>:+<code>ALTERNATE_VALUE</code>}" to expand to <code>ALTERNATE_VALUE</code> as long as "${<code>FOO</code>}" would have expanded to a non-empty value. No other elements of shell syntax are supported.</p>
<p>Each <code>KEY</code> must be a valid variable name. Empty lines and lines beginning with the comment character "#" are ignored.</p>
<h2>Example</h2>
<p><strong>Example 1. Setup environment to allow access to a program installed in /opt/foo</strong></p>
<p>/etc/environment.d/60-foo.conf:</p>
<p>.RS 4</p>
<pre><code>        FOO_DEBUG=force-software-gl,log-verbose
        PATH=/opt/foo/bin:$PATH
        LD_LIBRARY_PATH=/opt/foo/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
        XDG_DATA_DIRS=/opt/foo/share:${XDG_DATA_DIRS:-/usr/local/share/:/usr/share/}
        </code></pre>
<p>.RE</p>
</div></div></div><h1 id='applicability'><a href='#applicability'>APPLICABILITY</a></h1><div data-for='applicability' data-hide><div class='section' data-for='applicability'><div data-more>
<p>Environment variables exported by the user manager (<strong>systemd --user</strong> instance started in the user@<code>uid</code>.service system service) apply to any services started by that manager. In particular, this may include services which run user shells. For example in the GNOME environment, the graphical terminal emulator runs as the gnome-terminal-server.service user unit, which in turn runs the user shell, so that shell will inherit environment variables exported by the user manager. For other instances of the shell, not launched by the user manager, the environment they inherit is defined by the program that starts them. Hint: in general, <a href='/5/systemd.service'>systemd.service</a>(5) units contain programs launched by systemd, and <a href='/5/systemd.scope'>systemd.scope</a>(5) units contain programs launched by something else.</p>
<p>Specifically, for ssh logins, the <a href='/8/sshd'>sshd</a>(8) service builds an environment that is a combination of variables forwarded from the remote system and defined by <strong>sshd</strong>, see the discussion in <a href='/1/ssh'>ssh</a>(1). A graphical display session will have an analogous mechanism to define the environment. Note that some managers query the systemd user instance for the exported environment and inject this configuration into programs they start, using <strong>systemctl show-environment</strong> or the underlying D-Bus call.</p>
</div></div></div><h1 id='see-also'><a href='#see-also'>SEE ALSO</a></h1><div class='section' data-for='see-also'><div data-more>
<p><a href='/1/systemd'>systemd</a>(1), <a href='/8/systemd-environment-d-generator'>systemd-environment-d-generator</a>(8), <a href='/7/systemd.environment-generator'>systemd.environment-generator</a>(7)</p></div></div>


        </div>

    </body>

</html>