<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${brandName | h}</title>
    <link rel="stylesheet" href="${staticPublicPath}/built/girder_lib.min.css">
    <link rel="icon" type="image/png" href="${staticPublicPath}/built/ML_Favicon.png">
    % for plugin in pluginCss:
    <link rel="stylesheet" href="${staticPublicPath}/built/plugins/${plugin}/plugin.min.css">
    % endfor
  </head>
  <body>
    <div id="g-global-info-apiroot" class="hide">${apiRoot}</div>
    <script src="${staticPublicPath}/built/girder_lib.min.js"></script>
    <script src="${staticPublicPath}/built/girder_app.min.js"></script>
    <script type="text/javascript">
        $(function () {
            girderformindlogger.events.trigger('g:appload.before');
            girderformindlogger.app = new girderformindlogger.views.App({
                el: 'body',
                parentView: null,
                contactEmail: '${contactEmail | js}',
                privacyNoticeHref: '${privacyNoticeHref | js}',
                brandName: '${brandName | js}',
                bannerColor: '${bannerColor | js}',
                registrationPolicy: '${registrationPolicy | js}',
                enablePasswordLogin: ${enablePasswordLogin | n,json,js}
            }).render();
            girderformindlogger.events.trigger('g:appload.after', girderformindlogger.app);
        });
    </script>
    % for plugin in pluginJs:
    <script src="${staticPublicPath}/built/plugins/${plugin}/plugin.min.js"></script>
    % endfor
  </body>
</html>
