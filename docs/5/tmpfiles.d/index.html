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
<p>tmpfiles.d - Configuration for creation, deletion and cleaning of volatile and temporary files</p>
</div></div><h1 id='synopsis'><a href='#synopsis'>SYNOPSIS</a></h1><div class='section' data-for='synopsis'><div data-more>
<pre><code>/etc/tmpfiles.d/*.conf
/run/tmpfiles.d/*.conf
/usr/lib/tmpfiles.d/*.conf
    </code></pre>
<pre><code>~/.config/user-tmpfiles.d/*.conf
$XDG_RUNTIME_DIR/user-tmpfiles.d/*.conf
~/.local/share/user-tmpfiles.d/*.conf
...
/usr/share/user-tmpfiles.d/*.conf
    </code></pre>
<pre><code>#Type Path                                     Mode User Group Age         Argument
f     /file/to/create                          mode user group -           content
f+    /file/to/create-or-truncate              mode user group -           content
w     /file/to/write-to                        -    -    -     -           content
w+    /file/to/append-to                       -    -    -     -           content
d     /directory/to/create-and-cleanup         mode user group cleanup-age -
D     /directory/to/create-and-remove          mode user group cleanup-age -
e     /directory/to/cleanup                    mode user group cleanup-age -
v     /subvolume-or-directory/to/create        mode user group -           -
q     /subvolume-or-directory/to/create        mode user group -           -
Q     /subvolume-or-directory/to/create        mode user group -           -
p     /fifo/to/create                          mode user group -           -
p+    /fifo/to/[re]create                      mode user group -           -
L     /symlink/to/create                       -    -    -     -           symlink/target/path
L+    /symlink/to/[re]create                   -    -    -     -           symlink/target/path
c     /dev/char-device-to-create               mode user group -           major:minor
c+    /dev/char-device-to-[re]create           mode user group -           major:minor
b     /dev/block-device-to-create              mode user group -           major:minor
b+    /dev/block-device-to-[re]create          mode user group -           major:minor
C     /target/to/create                        -    -    -     -           /source/to/copy
x     /path-or-glob/to/ignore/recursively      -    -    -     -           -
X     /path-or-glob/to/ignore                  -    -    -     -           -
r     /empty/dir/to/remove                     -    -    -     -           -
R     /dir/to/remove/recursively               -    -    -     -           -
z     /path-or-glob/to/adjust/mode             mode user group -           -
Z     /path-or-glob/to/adjust/mode/recursively mode user group -           -
t     /path-or-glob/to/set/xattrs              -    -    -     -           xattrs
T     /path-or-glob/to/set/xattrs/recursively  -    -    -     -           xattrs
h     /path-or-glob/to/set/attrs               -    -    -     -           file attrs
H     /path-or-glob/to/set/attrs/recursively   -    -    -     -           file attrs
a     /path-or-glob/to/set/acls                -    -    -     -           POSIX ACLs
a+    /path-or-glob/to/append/acls             -    -    -     -           POSIX ACLs
A     /path-or-glob/to/set/acls/recursively    -    -    -     -           POSIX ACLs
A+    /path-or-glob/to/append/acls/recursively -    -    -     -           POSIX ACLs
</code></pre>
</div></div><h1 id='description'><a href='#description'>DESCRIPTION</a></h1><div class='section' data-for='description'><div data-more>
<p>tmpfiles.d configuration files provide a generic mechanism to define the <code>creation</code> of regular files, directories, pipes, and device nodes, adjustments to their <code>access mode, ownership, attributes, quota assignments, and contents</code>, and finally their time-based <code>removal</code>. It is mostly commonly used for volatile and temporary files and directories (such as those located under /run/, /tmp/, /var/tmp/, the API file systems such as /sys/ or /proc/, as well as some other directories below /var/).</p>
<p><strong>systemd-tmpfiles</strong> uses this configuration to create volatile files and directories during boot and to do periodic cleanup afterwards. See <a href='/5/systemd-tmpfiles'>systemd-tmpfiles</a>(5) for the description of systemd-tmpfiles-setup.service, systemd-tmpfiles-clean.service, and associated units.</p>
<p>System daemons frequently require private runtime directories below /run/ to store communication sockets and similar. For these, it is better to use <code>RuntimeDirectory=</code> in their unit files (see <a href='/5/systemd.exec'>systemd.exec</a>(5) for details), if the flexibility provided by tmpfiles.d is not required. The advantages are that the configuration required by the unit is centralized in one place, and that the lifetime of the directory is tied to the lifetime of the service itself. Similarly, <code>StateDirectory=</code>, <code>CacheDirectory=</code>, <code>LogsDirectory=</code>, and <code>ConfigurationDirectory=</code> should be used to create directories under /var/lib/, /var/cache/, /var/log/, and /etc/. tmpfiles.d should be used for files whose lifetime is independent of any service or requires more complicated configuration.</p>
</div></div><h1 id='configuration-directories-and-precedence'><a href='#configuration-directories-and-precedence'>CONFIGURATION DIRECTORIES AND PRECEDENCE</a></h1><div data-for='configuration-directories-and-precedence' data-hide><div class='section' data-for='configuration-directories-and-precedence'><div data-more>
<p>Each configuration file shall be named in the style of <code>package</code>.conf or <code>package</code>-<code>part</code>.conf. The second variant should be used when it is desirable to make it easy to override just this part of configuration.</p>
<p>Files in /etc/tmpfiles.d override files with the same name in /usr/lib/tmpfiles.d and /run/tmpfiles.d. Files in /run/tmpfiles.d override files with the same name in /usr/lib/tmpfiles.d. Packages should install their configuration files in /usr/lib/tmpfiles.d. Files in /etc/tmpfiles.d are reserved for the local administrator, who may use this logic to override the configuration files installed by vendor packages. All configuration files are sorted by their filename in lexicographic order, regardless of which of the directories they reside in. If multiple files specify the same path, the entry in the file with the lexicographically earliest name will be applied (note that lines suppressed due to the "!" are filtered before application, meaning that if an early line carries the exclamation mark and is suppressed because of that, a later line matching in path will be applied). All other conflicting entries will be logged as errors. When two lines are prefix path and suffix path of each other, then the prefix line is always created first, the suffix later (and if removal applies to the line, the order is reversed: the suffix is removed first, the prefix later). Lines that take globs are applied after those accepting no globs. If multiple operations shall be applied on the same file (such as ACL, xattr, file attribute adjustments), these are always done in the same fixed order. Except for those cases, the files/directories are processed in the order they are listed.</p>
<p>If the administrator wants to disable a configuration file supplied by the vendor, the recommended way is to place a symlink to /dev/null in /etc/tmpfiles.d/ bearing the same filename.</p>
</div></div></div><h1 id='configuration-file-format'><a href='#configuration-file-format'>CONFIGURATION FILE FORMAT</a></h1><div data-for='configuration-file-format' data-hide><div class='section' data-for='configuration-file-format'><div data-more>
<p>The configuration format is one line per path, containing type, path, mode, ownership, age, and argument fields. The lines are separated by newlines, the fields by whitespace:</p>
<p>.RS 4</p>
<pre><code>#Type Path        Mode User Group Age Argument...
d     /run/user   0755 root root  10d -
L     /tmp/foobar -    -    -     -   /dev/null</code></pre>
<p>.RE</p>
<p>Fields may contain C-style escapes. With the exception of the seventh field (the "argument") all fields may be enclosed in quotes. Note that any whitespace found in the line after the beginning of the argument field will be considered part of the argument field. To begin the argument field with a whitespace character, use C-style escapes (e.g. "\x20").</p>
<h2>Type</h2>
<p>The type consists of a single letter and optionally an exclamation mark ("!") minus sign ("-"), and/or equals sign ("=").</p>
<p>The following line types are understood:</p>
<p><code>f</code>, <code>f+</code></p>
<blockquote>
<p><code>f</code> will create a file if it does not exist yet. If the argument parameter is given and the file did not exist yet, it will be written to the file. <code>f+</code> will create or truncate the file. If the argument parameter is given, it will be written to the file. Does not follow symlinks.</p>
</blockquote>
<p><code>w</code>, <code>w+</code></p>
<blockquote>
<p>Write the argument parameter to a file, if the file exists. If suffixed with <code>+</code>, the line will be appended to the file. If your configuration writes multiple lines to the same file, use <code>w+</code>. Lines of this type accept shell-style globs in place of normal path names. The argument parameter will be written without a trailing newline. C-style backslash escapes are interpreted. Follows symlinks.</p>
</blockquote>
<p><code>d</code></p>
<blockquote>
<p>Create a directory. The mode and ownership will be adjusted if specified. Contents of this directory are subject to time based cleanup if the age argument is specified.</p>
</blockquote>
<p><code>D</code></p>
<blockquote>
<p>Similar to <code>d</code>, but in addition the contents of the directory will be removed when <strong>--remove</strong> is used.</p>
</blockquote>
<p><code>e</code></p>
<blockquote>
<p>Adjust the mode and ownership of existing directories and remove their contents based on age. Lines of this type accept shell-style globs in place of normal path names. Contents of the directories are subject to time based cleanup if the age argument is specified. If the age argument is "0", contents will be unconditionally deleted every time <strong>systemd-tmpfiles --clean</strong> is run.</p>
<p>For this entry to be useful, at least one of the mode, user, group, or age arguments must be specified, since otherwise this entry has no effect. As an exception, an entry with no effect may be useful when combined with <code>!</code>, see the examples.</p>
</blockquote>
<p><code>v</code></p>
<blockquote>
<p>Create a subvolume if the path does not exist yet, the file system supports subvolumes (btrfs), and the system itself is installed into a subvolume (specifically: the root directory / is itself a subvolume). Otherwise, create a normal directory, in the same way as <code>d</code>.</p>
<p>A subvolume created with this line type is not assigned to any higher-level quota group. For that, use <code>q</code> or <code>Q</code>, which allow creating simple quota group hierarchies, see below.</p>
</blockquote>
<p><code>q</code></p>
<blockquote>
<p>Create a subvolume or directory the same as <code>v</code>, but assign the subvolume to the same higher-level quota groups as the parent. This ensures that higher-level limits and accounting applied to the parent subvolume also include the specified subvolume. On non-btrfs file systems, this line type is identical to <code>d</code>.</p>
<p>If the subvolume already exists, no change to the quota hierarchy is made, regardless of whether the subvolume is already attached to a quota group or not. Also see <code>Q</code> below. See <a href='/8/btrfs-qgroup'>btrfs-qgroup</a>(8) for details about the btrfs quota group concept.</p>
</blockquote>
<p><code>Q</code></p>
<blockquote>
<p>Create the subvolume or directory the same as <code>v</code>, but assign the new subvolume to a new leaf quota group. Instead of copying the higher-level quota group assignments from the parent as is done with <code>q</code>, the lowest quota group of the parent subvolume is determined that is not the leaf quota group. Then, an "intermediary" quota group is inserted that is one level below this level, and shares the same ID part as the specified subvolume. If no higher-level quota group exists for the parent subvolume, a new quota group at level 255 sharing the same ID as the specified subvolume is inserted instead. This new intermediary quota group is then assigned to the parent subvolumes higher-level quota groups, and the specified subvolumes leaf quota group is assigned to it.</p>
<p>Effectively, this has a similar effect as <code>q</code>, however introduces a new higher-level quota group for the specified subvolume that may be used to enforce limits and accounting to the specified subvolume and children subvolume created within it. Thus, by creating subvolumes only via <code>q</code> and <code>Q</code>, a concept of "subtree quotas" is implemented. Each subvolume for which <code>Q</code> is set will get a "subtree" quota group created, and all child subvolumes created within it will be assigned to it. Each subvolume for which <code>q</code> is set will not get such a "subtree" quota group, but it is ensured that they are added to the same "subtree" quota group as their immediate parents.</p>
<p>It is recommended to use <code>Q</code> for subvolumes that typically contain further subvolumes, and where it is desirable to have accounting and quota limits on all child subvolumes together. Examples for <code>Q</code> are typically /home/ or /var/lib/machines/. In contrast, <code>q</code> should be used for subvolumes that either usually do not include further subvolumes or where no accounting and quota limits are needed that apply to all child subvolumes together. Examples for <code>q</code> are typically /var/ or /var/tmp/.</p>
<p>As with <code>q</code>, <code>Q</code> has no effect on the quota group hierarchy if the subvolume already exists, regardless of whether the subvolume already belong to a quota group or not.</p>
</blockquote>
<p><code>p</code>, <code>p+</code></p>
<blockquote>
<p>Create a named pipe (FIFO) if it does not exist yet. If suffixed with <code>+</code> and a file already exists where the pipe is to be created, it will be removed and be replaced by the pipe.</p>
</blockquote>
<p><code>L</code>, <code>L+</code></p>
<blockquote>
<p>Create a symlink if it does not exist yet. If suffixed with <code>+</code> and a file or directory already exists where the symlink is to be created, it will be removed and be replaced by the symlink. If the argument is omitted, symlinks to files with the same name residing in the directory /usr/share/factory/ are created. Note that permissions and ownership on symlinks are ignored.</p>
</blockquote>
<p><code>c</code>, <code>c+</code></p>
<blockquote>
<p>Create a character device node if it does not exist yet. If suffixed with <code>+</code> and a file already exists where the device node is to be created, it will be removed and be replaced by the device node. It is recommended to suffix this entry with an exclamation mark to only create static device nodes at boot, as udev will not manage static device nodes that are created at runtime.</p>
</blockquote>
<p><code>b</code>, <code>b+</code></p>
<blockquote>
<p>Create a block device node if it does not exist yet. If suffixed with <code>+</code> and a file already exists where the device node is to be created, it will be removed and be replaced by the device node. It is recommended to suffix this entry with an exclamation mark to only create static device nodes at boot, as udev will not manage static device nodes that are created at runtime.</p>
</blockquote>
<p><code>C</code></p>
<blockquote>
<p>Recursively copy a file or directory, if the destination files or directories do not exist yet or the destination directory is empty. Note that this command will not descend into subdirectories if the destination directory already exists and is not empty. Instead, the entire copy operation is skipped. If the argument is omitted, files from the source directory /usr/share/factory/ with the same name are copied. Does not follow symlinks.</p>
</blockquote>
<p><code>x</code></p>
<blockquote>
<p>Ignore a path during cleaning. Use this type to exclude paths from clean-up as controlled with the Age parameter. Note that lines of this type do not influence the effect of <code>r</code> or <code>R</code> lines. Lines of this type accept shell-style globs in place of normal path names.</p>
</blockquote>
<p><code>X</code></p>
<blockquote>
<p>Ignore a path during cleaning. Use this type to exclude paths from clean-up as controlled with the Age parameter. Unlike <code>x</code>, this parameter will not exclude the content if path is a directory, but only directory itself. Note that lines of this type do not influence the effect of <code>r</code> or <code>R</code> lines. Lines of this type accept shell-style globs in place of normal path names.</p>
</blockquote>
<p><code>r</code></p>
<blockquote>
<p>Remove a file or directory if it exists. This may not be used to remove non-empty directories, use <code>R</code> for that. Lines of this type accept shell-style globs in place of normal path names. Does not follow symlinks.</p>
</blockquote>
<p><code>R</code></p>
<blockquote>
<p>Recursively remove a path and all its subdirectories (if it is a directory). Lines of this type accept shell-style globs in place of normal path names. Does not follow symlinks.</p>
</blockquote>
<p><code>z</code></p>
<blockquote>
<p>Adjust the access mode, user and group ownership, and restore the SELinux security context of a file or directory, if it exists. Lines of this type accept shell-style globs in place of normal path names. Does not follow symlinks.</p>
</blockquote>
<p><code>Z</code></p>
<blockquote>
<p>Recursively set the access mode, user and group ownership, and restore the SELinux security context of a file or directory if it exists, as well as of its subdirectories and the files contained therein (if applicable). Lines of this type accept shell-style globs in place of normal path names. Does not follow symlinks.</p>
</blockquote>
<p><code>t</code></p>
<blockquote>
<p>Set extended attributes, see <a href='/5/attr'>attr</a>(5) for details. The argument field should take one or more assignment expressions in the form <code>namespace</code>.<code>attribute</code>=<code>value</code>, for examples see below. Lines of this type accept shell-style globs in place of normal path names. This can be useful for setting SMACK labels. Does not follow symlinks.</p>
<p>Please note that extended attributes settable with this line type are a different concept from the Linux file attributes settable with <code>h</code>/<code>H</code>, see below.</p>
</blockquote>
<p><code>T</code></p>
<blockquote>
<p>Same as <code>t</code>, but operates recursively.</p>
</blockquote>
<p><code>h</code></p>
<blockquote>
<p>Set Linux file/directory attributes. Lines of this type accept shell-style globs in place of normal path names.</p>
<p>The format of the argument field is <code>[+-=][aAcCdDeijPsStTu]</code>. The prefix <code>+</code> (the default one) causes the attribute(s) to be added; <code>-</code> causes the attribute(s) to be removed; <code>=</code> causes the attributes to be set exactly as the following letters. The letters "aAcCdDeijPsStTu" select the new attributes for the files, see <a href='/1/chattr'>chattr</a>(1) for further information.</p>
<p>Passing only <code>=</code> as argument resets all the file attributes listed above. It has to be pointed out that the <code>=</code> prefix limits itself to the attributes corresponding to the letters listed here. All other attributes will be left untouched. Does not follow symlinks.</p>
<p>Please note that the Linux file attributes settable with this line type are a different concept from the extended attributes settable with <code>t</code>/<code>T</code>, see above.</p>
</blockquote>
<p><code>H</code></p>
<blockquote>
<p>Sames as <code>h</code>, but operates recursively.</p>
</blockquote>
<p><code>a</code>, <code>a+</code></p>
<blockquote>
<p>Set POSIX ACLs (access control lists), see <a href='/5/acl'>acl</a>(5). If suffixed with <code>+</code>, the specified entries will be added to the existing set. <strong>systemd-tmpfiles</strong> will automatically add the required base entries for user and group based on the access mode of the file, unless base entries already exist or are explicitly specified. The mask will be added if not specified explicitly or already present. Lines of this type accept shell-style globs in place of normal path names. This can be useful for allowing additional access to certain files. Does not follow symlinks.</p>
</blockquote>
<p><code>A</code>, <code>A+</code></p>
<blockquote>
<p>Same as <code>a</code> and <code>a+</code>, but recursive. Does not follow symlinks.</p>
</blockquote>
<p>If the exclamation mark ("!") is used, this line is only safe to execute during boot, and can break a running system. Lines without the exclamation mark are presumed to be safe to execute at any time, e.g. on package upgrades. <strong>systemd-tmpfiles</strong> will take lines with an exclamation mark only into consideration, if the <strong>--boot</strong> option is given.</p>
<p>For example:</p>
<p>.RS 4</p>
<pre><code># Make sure these are created by default so that nobody else can
d /tmp/.X11-unix 1777 root root 10d

# Unlink the X11 lock files
r! /tmp/.X[0-9]*-lock</code></pre>
<p>.RE</p>
<p>The second line in contrast to the first one would break a running system, and will only be executed with <strong>--boot</strong>.</p>
<p>If the minus sign ("-") is used, this line failing to run successfully during create (and only create) will not cause the execution of <strong>systemd-tmpfiles</strong> to return an error.</p>
<p>For example:</p>
<p>.RS 4</p>
<pre><code># Modify sysfs but dont fail if we are in a container with a read-only /proc
w- /proc/sys/vm/swappiness - - - - 10</code></pre>
<p>.RE</p>
<p>If the equals sign ("=") is used, the file types of existing objects in the specified path are checked, and removed if they do not match. This includes any implicitly created parent directories (which can be either directories or directory symlinks). For example, if there is a FIFO in place of one of the parent path components it will be replaced with a directory.</p>
<p>Note that for all line types that result in creation of any kind of file node (i.e. <code>f</code>/<code>F</code>, <code>d</code>/<code>D</code>/<code>v</code>/<code>q</code>/<code>Q</code>, <code>p</code>, <code>L</code>, <code>c</code>/<code>b</code> and <code>C</code>) leading directories are implicitly created if needed, owned by root with an access mode of 0755. In order to create them with different modes or ownership make sure to add appropriate <code>d</code> lines.</p>
<h2>Path</h2>
<p>The file system path specification supports simple specifier expansion, see below. The path (after expansion) must be absolute.</p>
<h2>Mode</h2>
<p>The file access mode to use when creating this file or directory. If omitted or when set to "-", the default is used: 0755 for directories, 0644 for all other file objects. For <code>z</code>, <code>Z</code> lines, if omitted or when set to "-", the file access mode will not be modified. This parameter is ignored for <code>x</code>, <code>r</code>, <code>R</code>, <code>L</code>, <code>t</code>, and <code>a</code> lines.</p>
<p>Optionally, if prefixed with "~", the access mode is masked based on the already set access bits for existing file or directories: if the existing file has all executable bits unset, all executable bits are removed from the new access mode, too. Similarly, if all read bits are removed from the old access mode, they will be removed from the new access mode too, and if all write bits are removed, they will be removed from the new access mode too. In addition, the sticky/SUID/SGID bit is removed unless applied to a directory. This functionality is particularly useful in conjunction with <code>Z</code>.</p>
<h2>User, Group</h2>
<p>The user and group to use for this file or directory. This may either be a numeric ID or a user/group name. If omitted or when set to "-", the user and group of the user who invokes <strong>systemd-tmpfiles</strong> is used. For <code>z</code> and <code>Z</code> lines, when omitted or when set to "-", the file ownership will not be modified. These parameters are ignored for <code>x</code>, <code>r</code>, <code>R</code>, <code>L</code>, <code>t</code>, and <code>a</code> lines.</p>
<p>This field should generally only reference system users/groups, i.e. users/groups that are guaranteed to be resolvable during early boot. If this field references users/groups that only become resolveable during later boot (i.e. after NIS, LDAP or a similar networked directory service become available), execution of the operations declared by the line will likely fail. Also see <strong>Notes on Resolvability of User and Group Names</strong>[1] for more information on requirements on system user/group definitions.</p>
<h2>Age</h2>
<p>The date field, when set, is used to decide what files to delete when cleaning. If a file or directory is older than the current time minus the age field, it is deleted. The field format is a series of integers each followed by one of the following suffixes for the respective time units: <strong>s</strong>, <strong>m</strong> or <strong>min</strong>, <strong>h</strong>, <strong>d</strong>, <strong>w</strong>, <strong>ms</strong>, and <strong>us</strong>, meaning seconds, minutes, hours, days, weeks, milliseconds, and microseconds, respectively. Full names of the time units can be used too.</p>
<p>If multiple integers and units are specified, the time values are summed. If an integer is given without a unit, <strong>s</strong> is assumed.</p>
<p>When the age is set to zero, the files are cleaned unconditionally.</p>
<p>The age field only applies to lines starting with <code>d</code>, <code>D</code>, <code>e</code>, <code>v</code>, <code>q</code>, <code>Q</code>, <code>C</code>, <code>x</code> and <code>X</code>. If omitted or set to "-", no automatic clean-up is done.</p>
<p>If the age field starts with a tilde character "~", clean-up is only applied to files and directories one level inside the directory specified, but not the files and directories immediately inside it.</p>
<p>The age of a file system entry is determined from its last modification timestamp (mtime), its last access timestamp (atime), and (except for directories) its last status change timestamp (ctime). By default, any of these three (or two) values will prevent cleanup if it is more recent than the current time minus the age field. To restrict the deletion based on particular type of file timestamps, the age-by argument can be used.</p>
<p>The age-by argument overrides the timestamp types to be used for the age check. It can be specified by prefixing the age argument with a sequence of characters to specify the timestamp types and a colon (":"): "<code>age-by</code>...:<code>cleanup-age</code>". The argument can consist of <strong>a</strong> (<strong>A</strong> for directories), <strong>b</strong> (<strong>B</strong> for directories), <strong>c</strong> (<strong>C</strong> for directories), or <strong>m</strong> (<strong>M</strong> for directories). Those respectively indicate access, creation, last status change, and last modification time of a file system entry. The lower-case letter signifies that the given timestamp type should be considered for files, while the upper-case letter signifies that the given timestamp type should be considered for directories. See <a href='/2/statx'>statx</a>(2) file timestamp fields for more details about timestamp types.</p>
<p>If not specified, the age-by field defaults to <strong>abcmABM</strong>, i.e. by default all file timestamps are taken into consideration, with the exception of the last status change timestamp (ctime) for directories. This is because the aging logic itself will alter the ctime whenever it deletes a file inside it. To ensure that running the aging logic does not feed back into the next iteration of itself, ctime for directories is ignored by default.</p>
<p>For example:</p>
<p>.RS 4</p>
<pre><code># Files created and modified, and directories accessed more than
# an hour ago in "/tmp/foo/bar", are subject to time-based cleanup.
d /tmp/foo/bar - - - - bmA:1h -</code></pre>
<p>.RE</p>
<p>Note that while the aging algorithm is run a shared BSD file lock (see <a href='/2/flock'>flock</a>(2)) is taken on each directory the algorithm descends into (and each directory below that, and so on). If the aging algorithm finds a lock is already taken on some directory, it (and everything below it) is skipped. Applications may use this to temporarily exclude certain directory subtrees from the aging algorithm: the applications can take a BSD file lock themselves, and as long as they keep it aging of the directory and everything below it is disabled.</p>
<h2>Argument</h2>
<p>For <code>L</code> lines determines the destination path of the symlink. For <code>c</code> and <code>b</code>, determines the major/minor of the device node, with major and minor formatted as integers, separated by ":", e.g. "1:3". For <code>f</code>, <code>F</code>, and <code>w</code>, the argument may be used to specify a short string that is written to the file, suffixed by a newline. For <code>C</code>, specifies the source file or directory. For <code>t</code> and <code>T</code>, determines extended attributes to be set. For <code>a</code> and <code>A</code>, determines ACL attributes to be set. For <code>h</code> and <code>H</code>, determines the file attributes to set. Ignored for all other lines.</p>
<p>This field can contain specifiers, see below.</p>
</div></div></div><h1 id='specifiers'><a href='#specifiers'>SPECIFIERS</a></h1><div data-for='specifiers' data-hide><div class='section' data-for='specifiers'><div data-more>
<p>Specifiers can be used in the "path" and "argument" fields. An unknown or unresolvable specifier is treated as invalid configuration. The following expansions are understood:</p>
<p><br/>
<strong>Table 1. Specifiers available</strong></p>
<table>
<tbody>
<tr class="odd">
<td style="text-align: left;">Specifier</td>
<td style="text-align: left;">Meaning</td>
<td style="text-align: left;">Details</td>
</tr>
<tr class="even">
<td style="text-align: left;">"%a"</td>
<td style="text-align: left;">Architecture</td>
<td style="text-align: left;">A short string identifying the architecture of the local system. A string such as <strong>x86</strong>, <strong>x86-64</strong> or <strong>arm64</strong>. See the architectures defined for <code>ConditionArchitecture=</code> in <a href='/5/systemd.unit'>systemd.unit</a>(5) for a full list.</td>
</tr>
<tr class="odd">
<td style="text-align: left;">"%A"</td>
<td style="text-align: left;">Operating system image version</td>
<td style="text-align: left;">The operating system image version identifier of the running system, as read from the <code>IMAGE_VERSION=</code> field of /etc/os-release. If not set, resolves to an empty string. See <a href='/5/os-release'>os-release</a>(5) for more information.</td>
</tr>
<tr class="even">
<td style="text-align: left;">"%b"</td>
<td style="text-align: left;">Boot ID</td>
<td style="text-align: left;">The boot ID of the running system, formatted as string. See <a href='/4/random'>random</a>(4) for more information.</td>
</tr>
<tr class="odd">
<td style="text-align: left;">"%B"</td>
<td style="text-align: left;">Operating system build ID</td>
<td style="text-align: left;">The operating system build identifier of the running system, as read from the <code>BUILD_ID=</code> field of /etc/os-release. If not set, resolves to an empty string. See <a href='/5/os-release'>os-release</a>(5) for more information.</td>
</tr>
<tr class="even">
<td style="text-align: left;">"%C"</td>
<td style="text-align: left;">System or user cache directory</td>
<td style="text-align: left;">In <strong>--user</strong> mode, this is the same as <code>$XDG_CACHE_HOME</code>, and /var/cache otherwise.</td>
</tr>
<tr class="odd">
<td style="text-align: left;">"%g"</td>
<td style="text-align: left;">User group</td>
<td style="text-align: left;">This is the name of the group running the command. In case of the system instance this resolves to "root".</td>
</tr>
<tr class="even">
<td style="text-align: left;">"%G"</td>
<td style="text-align: left;">User GID</td>
<td style="text-align: left;">This is the numeric GID of the group running the command. In case of the system instance this resolves to <strong>0</strong>.</td>
</tr>
<tr class="odd">
<td style="text-align: left;">"%h"</td>
<td style="text-align: left;">User home directory</td>
<td style="text-align: left;">This is the home directory of the user running the command. In case of the system instance this resolves to "/root".</td>
</tr>
<tr class="even">
<td style="text-align: left;">"%H"</td>
<td style="text-align: left;">Host name</td>
<td style="text-align: left;">The hostname of the running system.</td>
</tr>
<tr class="odd">
<td style="text-align: left;">"%l"</td>
<td style="text-align: left;">Short host name</td>
<td style="text-align: left;">The hostname of the running system, truncated at the first dot to remove any domain component.</td>
</tr>
<tr class="even">
<td style="text-align: left;">"%L"</td>
<td style="text-align: left;">System or user log directory</td>
<td style="text-align: left;">In <strong>--user</strong> mode, this is the same as <code>$XDG_CONFIG_HOME</code> with /log appended, and /var/log otherwise.</td>
</tr>
<tr class="odd">
<td style="text-align: left;">"%m"</td>
<td style="text-align: left;">Machine ID</td>
<td style="text-align: left;">The machine ID of the running system, formatted as string. See <a href='/5/machine-id'>machine-id</a>(5) for more information.</td>
</tr>
<tr class="even">
<td style="text-align: left;">"%M"</td>
<td style="text-align: left;">Operating system image identifier</td>
<td style="text-align: left;">The operating system image identifier of the running system, as read from the <code>IMAGE_ID=</code> field of /etc/os-release. If not set, resolves to an empty string. See <a href='/5/os-release'>os-release</a>(5) for more information.</td>
</tr>
<tr class="odd">
<td style="text-align: left;">"%o"</td>
<td style="text-align: left;">Operating system ID</td>
<td style="text-align: left;">The operating system identifier of the running system, as read from the <code>ID=</code> field of /etc/os-release. See <a href='/5/os-release'>os-release</a>(5) for more information.</td>
</tr>
<tr class="even">
<td style="text-align: left;">"%S"</td>
<td style="text-align: left;">System or user state directory</td>
<td style="text-align: left;">In <strong>--user</strong> mode, this is the same as <code>$XDG_CONFIG_HOME</code>, and /var/lib otherwise.</td>
</tr>
<tr class="odd">
<td style="text-align: left;">"%t"</td>
<td style="text-align: left;">System or user runtime directory</td>
<td style="text-align: left;">In <strong>--user</strong> mode, this is the same <code>$XDG_RUNTIME_DIR</code>, and /run/ otherwise.</td>
</tr>
<tr class="even">
<td style="text-align: left;">"%T"</td>
<td style="text-align: left;">Directory for temporary files</td>
<td style="text-align: left;">This is either /tmp or the path "$TMPDIR", "$TEMP" or "$TMP" are set to. (Note that the directory may be specified without a trailing slash.)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">"%u"</td>
<td style="text-align: left;">User name</td>
<td style="text-align: left;">This is the name of the user running the command. In case of the system instance this resolves to "root".</td>
</tr>
<tr class="even">
<td style="text-align: left;">"%U"</td>
<td style="text-align: left;">User UID</td>
<td style="text-align: left;">This is the numeric UID of the user running the command. In case of the system instance this resolves to <strong>0</strong>.</td>
</tr>
<tr class="odd">
<td style="text-align: left;">"%v"</td>
<td style="text-align: left;">Kernel release</td>
<td style="text-align: left;">Identical to <strong>uname -r</strong> output.</td>
</tr>
<tr class="even">
<td style="text-align: left;">"%V"</td>
<td style="text-align: left;">Directory for larger and persistent temporary files</td>
<td style="text-align: left;">This is either /var/tmp or the path "$TMPDIR", "$TEMP" or "$TMP" are set to. (Note that the directory may be specified without a trailing slash.)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">"%w"</td>
<td style="text-align: left;">Operating system version ID</td>
<td style="text-align: left;">The operating system version identifier of the running system, as read from the <code>VERSION_ID=</code> field of /etc/os-release. If not set, resolves to an empty string. See <a href='/5/os-release'>os-release</a>(5) for more information.</td>
</tr>
<tr class="even">
<td style="text-align: left;">"%W"</td>
<td style="text-align: left;">Operating system variant ID</td>
<td style="text-align: left;">The operating system variant identifier of the running system, as read from the <code>VARIANT_ID=</code> field of /etc/os-release. If not set, resolves to an empty string. See <a href='/5/os-release'>os-release</a>(5) for more information.</td>
</tr>
<tr class="odd">
<td style="text-align: left;">"%%"</td>
<td style="text-align: left;">Single percent sign</td>
<td style="text-align: left;">Use "%%" in place of "%" to specify a single percent sign.</td>
</tr>
</tbody>
</table>
</div></div></div><h1 id='examples'><a href='#examples'>EXAMPLES</a></h1><div class='section' data-for='examples'><div data-more>
<p><strong>Example 1. Create directories with specific mode and ownership</strong></p>
<p><a href='/1/screen'>screen</a>(1), needs two directories created at boot with specific modes and ownership:</p>
<p>.RS 4</p>
<pre><code># /usr/lib/tmpfiles.d/screen.conf
d /run/screens  1777 root screen 10d
d /run/uscreens 0755 root screen 10d12h</code></pre>
<p>.RE</p>
<p>Contents of /run/screens and /run/uscreens will be cleaned up after 10 and 10½ days, respectively.</p>
<p><strong>Example 2. Create a directory with a SMACK attribute</strong></p>
<p>.RS 4</p>
<pre><code>D /run/cups - - - -
t /run/cups - - - - security.SMACK64=printing user.attr-with-spaces="foo bar"
      </code></pre>
<p>.RE</p>
<p>The directory will be owned by root and have default mode. Its contents are not subject to time based cleanup, but will be obliterated when <strong>systemd-tmpfiles --remove</strong> runs.</p>
<p><strong>Example 3. Create a directory and prevent its contents from cleanup</strong></p>
<p><a href='/1/abrt'>abrt</a>(1), needs a directory created at boot with specific mode and ownership and its content should be preserved from the automatic cleanup applied to the contents of /var/tmp:</p>
<p>.RS 4</p>
<pre><code># /usr/lib/tmpfiles.d/tmp.conf
d /var/tmp 1777 root root 30d</code></pre>
<p>.RE</p>
<p>.RS 4</p>
<pre><code># /usr/lib/tmpfiles.d/abrt.conf
d /var/tmp/abrt 0755 abrt abrt -</code></pre>
<p>.RE</p>
<p><strong>Example 4. Apply clean up during boot and based on time</strong></p>
<p>.RS 4</p>
<pre><code># /usr/lib/tmpfiles.d/dnf.conf
r! /var/cache/dnf/*/*/download_lock.pid
r! /var/cache/dnf/*/*/metadata_lock.pid
r! /var/lib/dnf/rpmdb_lock.pid
e  /var/cache/dnf/ - - - 30d</code></pre>
<p>.RE</p>
<p>The lock files will be removed during boot. Any files and directories in /var/cache/dnf/ will be removed after they have not been accessed in 30 days.</p>
<p><strong>Example 5. Empty the contents of a cache directory on boot</strong></p>
<p>.RS 4</p>
<pre><code># /usr/lib/tmpfiles.d/krb5rcache.conf
e! /var/cache/krb5rcache - - - 0</code></pre>
<p>.RE</p>
<p>Any files and subdirectories in /var/cache/krb5rcache/ will be removed on boot. The directory will not be created.</p>
</div></div><h1 id='run-and-varrun'><a href='#run-and-varrun'>/RUN/ AND /VAR/RUN/</a></h1><div data-for='run-and-varrun' data-hide><div class='section' data-for='run-and-varrun'><div data-more>
<p>/var/run/ is a deprecated symlink to /run/, and applications should use the latter. <strong>systemd-tmpfiles</strong> will warn if /var/run/ is used.</p>
</div></div></div><h1 id='see-also'><a href='#see-also'>SEE ALSO</a></h1><div class='section' data-for='see-also'><div data-more>
<p><a href='/1/systemd'>systemd</a>(1), <a href='/8/systemd-tmpfiles'>systemd-tmpfiles</a>(8), <a href='/1/systemd-delta'>systemd-delta</a>(1), <a href='/5/systemd.exec'>systemd.exec</a>(5), <a href='/5/attr'>attr</a>(5), <a href='/1/getfattr'>getfattr</a>(1), <a href='/1/setfattr'>setfattr</a>(1), <a href='/1/setfacl'>setfacl</a>(1), <a href='/1/getfacl'>getfacl</a>(1), <a href='/1/chattr'>chattr</a>(1), <a href='/8/btrfs-subvolume'>btrfs-subvolume</a>(8), <a href='/8/btrfs-qgroup'>btrfs-qgroup</a>(8)</p>
</div></div><h1 id='notes'><a href='#notes'>NOTES</a></h1><div data-for='notes' data-hide><div class='section' data-for='notes'><div data-more>
<ul>
<li><p>Notes on Resolvability of User and Group Names</p>
<p><a href="https://systemd.io/UIDS-GIDS/#notes-on-resolvability-of-user-and-group-names">https://systemd.io/UIDS-GIDS/#notes-on-resolvability-of-user-and-group-names</a></p></li>
</ul></div></div></div>


        </div>

    </body>

</html>