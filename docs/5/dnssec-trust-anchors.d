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
<p><a data-bs-content='This is the man page for &lt;code&gt;dnssec-trust-anchors.d&lt;/code&gt; and 2 related functions.' data-bs-toggle='popover' tabindex='0'>dnssec-trust-anchors.d</a>, systemd.positive, systemd.negative - DNSSEC trust anchor configuration files</p>
</div></div><h1 id='synopsis'><a href='#synopsis'>SYNOPSIS</a></h1><div class='section' data-for='synopsis'><div data-more>
<p>/etc/dnssec-trust-anchors.d/*.positive</p>
<p>/run/dnssec-trust-anchors.d/*.positive</p>
<p>/usr/lib/dnssec-trust-anchors.d/*.positive</p>
<p>/etc/dnssec-trust-anchors.d/*.negative</p>
<p>/run/dnssec-trust-anchors.d/*.negative</p>
<p>/usr/lib/dnssec-trust-anchors.d/*.negative</p>
</div></div><h1 id='description'><a href='#description'>DESCRIPTION</a></h1><div class='section' data-for='description'><div data-more>
<p>The DNSSEC trust anchor configuration files define positive and negative trust anchors <a href='/8/systemd-resolved.service'>systemd-resolved.service</a>(8) bases DNSSEC integrity proofs on.</p>
</div></div><h1 id='positive-trust-anchors'><a href='#positive-trust-anchors'>POSITIVE TRUST ANCHORS</a></h1><div data-for='positive-trust-anchors' data-hide><div class='section' data-for='positive-trust-anchors'><div data-more>
<p>Positive trust anchor configuration files contain <strong>DNSKEY</strong> and <strong>DS</strong> resource record definitions to use as base for DNSSEC integrity proofs. See <strong>RFC 4035, Section 4.4</strong>[1] for more information about DNSSEC trust anchors.</p>
<p>Positive trust anchors are read from files with the suffix .positive located in /etc/dnssec-trust-anchors.d/, /run/dnssec-trust-anchors.d/ and /usr/lib/dnssec-trust-anchors.d/. These directories are searched in the specified order, and a trust anchor file of the same name in an earlier path overrides a trust anchor files in a later path. To disable a trust anchor file shipped in /usr/lib/dnssec-trust-anchors.d/ it is sufficient to provide an identically-named file in /etc/dnssec-trust-anchors.d/ or /run/dnssec-trust-anchors.d/ that is either empty or a symlink to /dev/null ("masked").</p>
<p>Positive trust anchor files are simple text files resembling DNS zone files, as documented in <strong>RFC 1035, Section 5</strong>[2]. One <strong>DS</strong> or <strong>DNSKEY</strong> resource record may be listed per line. Empty lines and lines starting with "#" or ";" are ignored, which may be used for commenting. A &lt;consant&gt;DS&lt;/consant&gt; resource record is specified like in the following example:</p>
<p>.RS 4</p>
<pre><code>. IN DS 19036 8 2 49aac11d7b6f6446702e54a1607371607a1a41855200fd2ce1cdde32f24e8fb5</code></pre>
<p>.RE</p>
<p>The first word specifies the domain, use "." for the root domain. The domain may be specified with or without trailing dot, which is considered equivalent. The second word must be "IN" the third word "DS". The following words specify the key tag, signature algorithm, digest algorithm, followed by the hex-encoded key fingerprint. See <strong>RFC 4034, Section 5</strong>[3] for details about the precise syntax and meaning of these fields.</p>
<p>Alternatively, <strong>DNSKEY</strong> resource records may be used to define trust anchors, like in the following example:</p>
<p>.RS 4</p>
<pre><code>. IN DNSKEY 257 3 8 AwEAAagAIKlVZrpC6Ia7gEzahOR+9W29euxhJhVVLOyQbSEW0O8gcCjFFVQUTf6v58fLjwBd0YI0EzrAcQqBGCzh/RStIoO8g0NfnfL2MTJRkxoXbfDaUeVPQuYEhg37NZWAJQ9VnMVDxP/VHL496M/QZxkjf5/Efucp2gaDX6RS6CXpoY68LsvPVjR0ZSwzz1apAzvN9dlzEheX7ICJBBtuA6G3LQpzW5hOA2hzCTMjJPJ8LbqF6dsV6DoBQzgul0sGIcGOYl7OyQdXfZ57relSQageu+ipAdTTJ25AsRTAoub8ONGcLmqrAmRLKBP1dfwhYB4N7knNnulqQxA+Uk1ihz0=</code></pre>
<p>.RE</p>
<p>The first word specifies the domain again, the second word must be "IN", followed by "DNSKEY". The subsequent words encode the <strong>DNSKEY</strong> flags, protocol and algorithm fields, followed by the key data encoded in Base64. See <strong>RFC 4034, Section 2</strong>[4] for details about the precise syntax and meaning of these fields.</p>
<p>If multiple <strong>DS</strong> or <strong>DNSKEY</strong> records are defined for the same domain (possibly even in different trust anchor files), all keys are used and are considered equivalent as base for DNSSEC proofs.</p>
<p>Note that systemd-resolved will automatically use a built-in trust anchor key for the Internet root domain if no positive trust anchors are defined for the root domain. In most cases it is hence unnecessary to define an explicit key with trust anchor files. The built-in key is disabled as soon as at least one trust anchor key for the root domain is defined in trust anchor files.</p>
<p>It is generally recommended to encode trust anchors in <strong>DS</strong> resource records, rather than <strong>DNSKEY</strong> resource records.</p>
<p>If a trust anchor specified via a <strong>DS</strong> record is found revoked it is automatically removed from the trust anchor database for the runtime. See <strong>RFC 5011</strong>[5] for details about revoked trust anchors. Note that systemd-resolved will not update its trust anchor database from DNS servers automatically. Instead, it is recommended to update the resolver software or update the new trust anchor via adding in new trust anchor files.</p>
<p>The current DNSSEC trust anchor for the Internets root domain is available at the <strong>IANA Trust Anchor and Keys</strong>[6] page.</p>
</div></div></div><h1 id='negative-trust-anchors'><a href='#negative-trust-anchors'>NEGATIVE TRUST ANCHORS</a></h1><div data-for='negative-trust-anchors' data-hide><div class='section' data-for='negative-trust-anchors'><div data-more>
<p>Negative trust anchors define domains where DNSSEC validation shall be turned off. Negative trust anchor files are found at the same location as positive trust anchor files, and follow the same overriding rules. They are text files with the .negative suffix. Empty lines and lines whose first character is ";" are ignored. Each line specifies one domain name which is the root of a DNS subtree where validation shall be disabled. For example:</p>
<p>.RS 4</p>
<pre><code># Reverse IPv4 mappings
<a href="http://10.in-addr.arpa">10.in-addr.arpa</a>
<a href="http://16.172.in-addr.arpa">16.172.in-addr.arpa</a>
<a href="http://168.192.in-addr.arpa">168.192.in-addr.arpa</a>
...
# Some custom domains
prod
stag</code></pre>
<p>.RE</p>
<p>Negative trust anchors are useful to support private DNS subtrees that are not referenced from the Internet DNS hierarchy, and not signed.</p>
<p><strong>RFC 7646</strong>[7] for details on negative trust anchors.</p>
<p>If no negative trust anchor files are configured a built-in set of well-known private DNS zone domains is used as negative trust anchors.</p>
<p>It is also possibly to define per-interface negative trust anchors using the <code>DNSSECNegativeTrustAnchors=</code> setting in <a href='/5/systemd.network'>systemd.network</a>(5) files.</p>
</div></div></div><h1 id='see-also'><a href='#see-also'>SEE ALSO</a></h1><div class='section' data-for='see-also'><div data-more>
<p><a href='/1/systemd'>systemd</a>(1), <a href='/8/systemd-resolved.service'>systemd-resolved.service</a>(8), <a href='/5/resolved.conf'>resolved.conf</a>(5), <a href='/5/systemd.network'>systemd.network</a>(5)</p>
</div></div><h1 id='notes'><a href='#notes'>NOTES</a></h1><div data-for='notes' data-hide><div class='section' data-for='notes'><div data-more>
<ul>
<li><p>RFC 4035, Section 4.4</p>
<p><a href="https://tools.ietf.org/html/rfc4035#section-4.4">https://tools.ietf.org/html/rfc4035#section-4.4</a></p></li>
<li><p>RFC 1035, Section 5</p>
<p><a href="https://tools.ietf.org/html/rfc1035#section-5">https://tools.ietf.org/html/rfc1035#section-5</a></p></li>
<li><p>RFC 4034, Section 5</p>
<p><a href="https://tools.ietf.org/html/rfc4034#section-5">https://tools.ietf.org/html/rfc4034#section-5</a></p></li>
<li><p>RFC 4034, Section 2</p>
<p><a href="https://tools.ietf.org/html/rfc4034#section-2">https://tools.ietf.org/html/rfc4034#section-2</a></p></li>
<li><p>RFC 5011</p>
<p><a href="https://tools.ietf.org/html/rfc5011">https://tools.ietf.org/html/rfc5011</a></p></li>
<li><p>IANA Trust Anchor and Keys</p>
<p><a href="https://data.iana.org/root-anchors/root-anchors.xml">https://data.iana.org/root-anchors/root-anchors.xml</a></p></li>
<li><p>RFC 7646</p>
<p><a href="https://tools.ietf.org/html/rfc7646">https://tools.ietf.org/html/rfc7646</a></p></li>
</ul></div></div></div>


        </div>

    </body>

</html>