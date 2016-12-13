// This is script.js
// You can write JavaScript for your site in here.
//
    $(document).ready(function() {

        var updateFeed = function() {
            $('.twitter-feed').socialfeed({
                // Twitter
                twitter: {
                    accounts: ['#UTSCFinanceHacks'],
                    limit: 2,
                    consumer_key: 'm2ikDioSeeKbXDzYRg6VyecDw', // make sure to have your app read-only
                    consumer_secret: 'ZSTavMhMvUaIkiTmjQuuuoZDSSHNBeIgvxTKqOOoQ1buSse6Am', // make sure to have your app read-only
                },

                // GENERAL SETTINGS
                template_html:                                  //String: HTML used for each post. This overrides the 'template' filename option
                '<article class="twitter-post"> \
                <a href="{{=it.author_link}}"><i class="icon ion-social-twitter"></i></a> \
                <h4>{{=it.author_name}}</h4><p>{{=it.text}}  \
                </p> \
                </article>',
                length: 200,
                show_media: true,
                // Moderation function - if returns false, template will have class hidden
                moderation: function(content) {
                    return (content.text) ? content.text.indexOf('fuck') == -1 : true;
                },
                //update_period: 5000,
                // When all the posts are collected and displayed - this function is evoked
                callback: function() {
                    console.log('all posts are collected');
                }
            });
        };

        updateFeed();

    });