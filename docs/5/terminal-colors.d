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
<p>terminal-colors.d - configure output colorization for various utilities</p>
</div></div><h1 id='synopsis'><a href='#synopsis'>SYNOPSIS</a></h1><div class='section' data-for='synopsis'><div data-more>
<p>/etc/terminal-colors.d/<code>[[name][@term].][type]</code></p>
</div></div><h1 id='description'><a href='#description'>DESCRIPTION</a></h1><div class='section' data-for='description'><div data-more>
<p>Files in this directory determine the default behavior for utilities when coloring output.</p>
<p>The <code>name</code> is a utility name. The name is optional and when none is specified then the file is used for all unspecified utilities.</p>
<p>The <code>term</code> is a terminal identifier (the TERM environment variable). The terminal identifier is optional and when none is specified then the file is used for all unspecified terminals.</p>
<p>The <code>type</code> is a file type. Supported file types are:</p>
<p><strong>disable</strong></p>
<blockquote>
<p>Turns off output colorization for all compatible utilities.</p>
</blockquote>
<p><strong>enable</strong></p>
<blockquote>
<p>Turns on output colorization; any matching <strong>disable</strong> files are ignored.</p>
</blockquote>
<p><strong>scheme</strong></p>
<blockquote>
<p>Specifies colors used for output. The file format may be specific to the utility, the default format is described below.</p>
</blockquote>
<p>If there are more files that match for a utility, then the file with the more specific filename wins. For example, the filename "@xterm.scheme" has less priority than "<a href="mailto:dmesg@xterm.scheme">dmesg@xterm.scheme</a>". The lowest priority are those files without a utility name and terminal identifier (e.g., "disable").</p>
<p>The user-specific <code>$XDG_CONFIG_HOME/terminal-colors.d</code> or <code>$HOME/.config/terminal-colors.d</code> overrides the global setting.</p>
</div></div><h1 id='default-scheme-files-format'><a href='#default-scheme-files-format'>DEFAULT SCHEME FILES FORMAT</a></h1><div data-for='default-scheme-files-format' data-hide><div class='section' data-for='default-scheme-files-format'><div data-more>
<p>The following statement is recognized:</p>
<blockquote>
<p><strong>name color-sequence</strong><br/>
</p>
</blockquote>
<p>The <strong>name</strong> is a logical name of color sequence (for example "error"). The names are specific to the utilities. For more details always see the COLORS section in the man page for the utility.</p>
<p>The <strong>color-sequence</strong> is a color name, ASCII color sequences or escape sequences.</p>
<h2>Color names</h2>
<p>black, blink, blue, bold, brown, cyan, darkgray, gray, green, halfbright, lightblue, lightcyan, lightgray, lightgreen, lightmagenta, lightred, magenta, red, reset, reverse, and yellow.</p>
<h2>ANSI color sequences</h2>
<p>The color sequences are composed of sequences of numbers separated by semicolons. The most common codes are:</p>
<blockquote>
<table>
<tbody>
<tr class="odd">
<td style="text-align: left;">0</td>
<td style="text-align: left;">to restore default color</td>
</tr>
<tr class="even">
<td style="text-align: left;">1</td>
<td style="text-align: left;">for brighter colors</td>
</tr>
<tr class="odd">
<td style="text-align: left;">4</td>
<td style="text-align: left;">for underlined text</td>
</tr>
<tr class="even">
<td style="text-align: left;">5</td>
<td style="text-align: left;">for flashing text</td>
</tr>
<tr class="odd">
<td style="text-align: left;">30</td>
<td style="text-align: left;">for black foreground</td>
</tr>
<tr class="even">
<td style="text-align: left;">31</td>
<td style="text-align: left;">for red foreground</td>
</tr>
<tr class="odd">
<td style="text-align: left;">32</td>
<td style="text-align: left;">for green foreground</td>
</tr>
<tr class="even">
<td style="text-align: left;">33</td>
<td style="text-align: left;">for yellow (or brown) foreground</td>
</tr>
<tr class="odd">
<td style="text-align: left;">34</td>
<td style="text-align: left;">for blue foreground</td>
</tr>
<tr class="even">
<td style="text-align: left;">35</td>
<td style="text-align: left;">for purple foreground</td>
</tr>
<tr class="odd">
<td style="text-align: left;">36</td>
<td style="text-align: left;">for cyan foreground</td>
</tr>
<tr class="even">
<td style="text-align: left;">37</td>
<td style="text-align: left;">for white (or gray) foreground</td>
</tr>
<tr class="odd">
<td style="text-align: left;">40</td>
<td style="text-align: left;">for black background</td>
</tr>
<tr class="even">
<td style="text-align: left;">41</td>
<td style="text-align: left;">for red background</td>
</tr>
<tr class="odd">
<td style="text-align: left;">42</td>
<td style="text-align: left;">for green background</td>
</tr>
<tr class="even">
<td style="text-align: left;">43</td>
<td style="text-align: left;">for yellow (or brown) background</td>
</tr>
<tr class="odd">
<td style="text-align: left;">44</td>
<td style="text-align: left;">for blue background</td>
</tr>
<tr class="even">
<td style="text-align: left;">45</td>
<td style="text-align: left;">for purple background</td>
</tr>
<tr class="odd">
<td style="text-align: left;">46</td>
<td style="text-align: left;">for cyan background</td>
</tr>
<tr class="even">
<td style="text-align: left;">47</td>
<td style="text-align: left;">for white (or gray) background</td>
</tr>
</tbody>
</table>
<p><br/>
</p>
</blockquote>
<h2>Escape sequences</h2>
<p>To specify control or blank characters in the color sequences, C-style \-escaped notation can be used:</p>
<blockquote>
<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><strong>\a</strong></td>
<td style="text-align: left;">Bell (ASCII 7)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><strong>\b</strong></td>
<td style="text-align: left;">Backspace (ASCII 8)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><strong>\e</strong></td>
<td style="text-align: left;">Escape (ASCII 27)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><strong>\f</strong></td>
<td style="text-align: left;">Form feed (ASCII 12)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><strong>\n</strong></td>
<td style="text-align: left;">Newline (ASCII 10)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><strong>\r</strong></td>
<td style="text-align: left;">Carriage Return (ASCII 13)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><strong>\t</strong></td>
<td style="text-align: left;">Tab (ASCII 9)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><strong>\v</strong></td>
<td style="text-align: left;">Vertical Tab (ASCII 11)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><strong>\?</strong></td>
<td style="text-align: left;">Delete (ASCII 127)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><strong>\_</strong></td>
<td style="text-align: left;">Space</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><strong>\\</strong></td>
<td style="text-align: left;">Backslash (\)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><strong>\^</strong></td>
<td style="text-align: left;">Caret (^)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><strong>\#</strong></td>
<td style="text-align: left;">Hash mark (#)</td>
</tr>
</tbody>
</table>
<p><br/>
</p>
</blockquote>
<p>Please note that escapes are necessary to enter a space, backslash, caret, or any control character anywhere in the string, as well as a hash mark as the first character.</p>
<p>For example, to use a red background for alert messages in the output of <a href='/1/dmesg'>dmesg</a>(1), use:</p>
<blockquote>
<p><strong>echo 'alert 37;41' &gt;&gt; /etc/terminal-colors.d/dmesg.scheme</strong><br/>
</p>
</blockquote>
<h2>Comments</h2>
<p>Lines where the first non-blank character is a # (hash) are ignored. Any other use of the hash character is not interpreted as introducing a comment.</p>
</div></div></div><h1 id='environment'><a href='#environment'>ENVIRONMENT</a></h1><div data-for='environment' data-hide><div class='section' data-for='environment'><div data-more>
<p>TERMINAL_COLORS_DEBUG=all</p>
<blockquote>
<p>enables debug output.</p>
</blockquote>
</div></div></div><h1 id='files'><a href='#files'>FILES</a></h1><div data-for='files' data-hide><div class='section' data-for='files'><div data-more>
<p><code>$XDG_CONFIG_HOME/terminal-colors.d</code></p>
<p><code>$HOME/.config/terminal-colors.d</code></p>
<p><code>/etc/terminal-colors.d</code></p>
</div></div></div><h1 id='example'><a href='#example'>EXAMPLE</a></h1><div class='section' data-for='example'><div data-more>
<p>Disable colors for all compatible utilities:</p>
<blockquote>
<p><strong>touch /etc/terminal-colors.d/disable</strong><br/>
</p>
</blockquote>
<p>Disable colors for all compatible utils on a vt100 terminal:</p>
<blockquote>
<p><strong>touch /<a href="mailto:etc/terminal-colors.d/@vt100.disabl">etc/terminal-colors.d/@vt100.disabl</a>e</strong><br/>
</p>
</blockquote>
<p>Disable colors for all compatible utils except <a href='/1/dmesg'>dmesg</a>(1):</p>
<blockquote>
<p><strong>touch /etc/terminal-colors.d/disable</strong></p>
<p><strong>touch /etc/terminal-colors.d/dmesg.enable</strong><br/>
</p>
</blockquote>
</div></div><h1 id='compatibility'><a href='#compatibility'>COMPATIBILITY</a></h1><div data-for='compatibility' data-hide><div class='section' data-for='compatibility'><div data-more>
<p>The terminal-colors.d functionality is currently supported by all util-linux utilities which provides colorized output. For more details always see the COLORS section in the man page for the utility.</p>
</div></div></div><h1 id='reporting-bugs'><a href='#reporting-bugs'>REPORTING BUGS</a></h1><div data-for='reporting-bugs' data-hide><div class='section' data-for='reporting-bugs'><div data-more>
<p>For bug reports, use the issue tracker at &lt;<a href="https://github.com/karelzak/util-linux/issues&amp;gt;">https://github.com/karelzak/util-linux/issues&gt;</a>.</p>
</div></div></div><h1 id='availability'><a href='#availability'>AVAILABILITY</a></h1><div data-for='availability' data-hide><div class='section' data-for='availability'><div data-more>
<p><strong>terminal-colors.d</strong> is part of the util-linux package which can be downloaded from <code>Linux Kernel Archive</code> &lt;<a href="https://www.kernel.org/pub/linux/utils/util-linux/&amp;gt;">https://www.kernel.org/pub/linux/utils/util-linux/&gt;</a>.</p></div></div></div>


        </div>

    </body>

</html>