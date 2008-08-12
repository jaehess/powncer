class Test::Unit::TestCase
  
  def example_auth_sig
    "cG93bmNlcnRlc3Q6cG93bmNlcnRlc3Q=\n"
  end
  
  def auth_example_send_to_for
    <<-JSON
    {
        "selected": "public", 
        "options": {
            "all": "all my friends", 
            "set": {
                "set_17183": "Powncer",
                "set_13592": "Souptoys", 
                "set_13593": "Family", 
                "set_13594": "AAA-", 
                "set_16673": "Alvatech"
            }, 
            "private_note": {
                "friend_125221": "summer hess", 
                "friend_125050": "Sean Duley", 
                "friend_9440": "Steven Gemmen", 
                "friend_124968": "Heath Wagner", 
                "friend_127970": "Andrew Schutte", 
                "friend_171125": "David Benedic", 
                "friend_171628": "Powncer Test", 
                "friend_125258": "Michael Winser"
            }, 
            "public": "the public"
        }
    }
    JSON
  end
  
  def auth_example_notes_for
    <<-JSON
    {
        "notes": [
            {
                "body": "Pownce Brunch Miami writeup by Victor (http:\/\/pownce.com\/DJ_Knowledge\/). Awesome photos.", 
                "permalink": "http:\/\/pownce.com\/leahculver\/notes\/1454036\/", 
                "sender": {
                    "username": "leahculver", 
                    "friend_count": 309, 
                    "permalink": "http:\/\/pownce.com\/leahculver\/", 
                    "fan_count": 4157, 
                    "short_name": "Leah C.", 
                    "age": 25, 
                    "max_upload_mb": 100, 
                    "first_name": "Leah", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/l\/e\/a\/leahculver\/1_smedium.png", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/l\/e\/a\/leahculver\/1_small.png", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/l\/e\/a\/leahculver\/1_tiny.png", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/l\/e\/a\/leahculver\/1_medium.png", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/l\/e\/a\/leahculver\/1_large.png"
                    }, 
                    "blurb": "Pownce co-founder and website developer.", 
                    "fan_of_count": 10, 
                    "id": 1, 
                    "is_pro": true, 
                    "location": "San Francisco"
                }, 
                "num_replies": "11", 
                "display_since": "9 hours ago", 
                "timestamp": 1204594986, 
                "seconds_since": 34507, 
                "num_recipients": "4459", 
                "link": {
                    "url": "http:\/\/bub.blicio.us\/?p=748"
                }, 
                "stars": "0.0", 
                "is_public": true, 
                "type": "link", 
                "id": 1454036, 
                "is_private": false
            }, 
            {
                "body": "just posted a full actionscript 3 library for the new Pownce V2.0  API. make your own desktop.", 
                "permalink": "http:\/\/pownce.com\/InitApp\/notes\/1453524\/", 
                "sender": {
                    "username": "InitApp", 
                    "friend_count": 10, 
                    "permalink": "http:\/\/pownce.com\/InitApp\/", 
                    "fan_count": 2, 
                    "short_name": "Steven G.", 
                    "country": "United States", 
                    "max_upload_mb": 100, 
                    "first_name": "Steven", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Guy", 
                    "fan_of_count": 2, 
                    "id": 9440, 
                    "is_pro": true, 
                    "location": "San Francisco - [Lower Haight]"
                }, 
                "num_replies": "1", 
                "display_since": "11 hours ago", 
                "timestamp": 1204589759, 
                "seconds_since": 39734, 
                "num_recipients": "11", 
                "link": {
                    "url": "http:\/\/initApp.com\/2008\/03\/03\/pownce-actionscript-3-library-released-full-api-v20-implementation-upload-files-and-everything\/"
                }, 
                "stars": "5.0", 
                "is_public": true, 
                "type": "link", 
                "id": 1453524, 
                "is_private": false
            }, 
            {
                "body": "Picture from the top of the Twin Peaks (south) from yesterday", 
                "permalink": "http:\/\/pownce.com\/InitApp\/notes\/1444374\/", 
                "sender": {
                    "username": "InitApp", 
                    "friend_count": 10, 
                    "permalink": "http:\/\/pownce.com\/InitApp\/", 
                    "fan_count": 2, 
                    "short_name": "Steven G.", 
                    "country": "United States", 
                    "max_upload_mb": 100, 
                    "first_name": "Steven", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Guy", 
                    "fan_of_count": 2, 
                    "id": 9440, 
                    "is_pro": true, 
                    "location": "San Francisco - [Lower Haight]"
                }, 
                "num_replies": "0", 
                "display_since": "1 day ago", 
                "timestamp": 1204476097, 
                "seconds_since": 153396, 
                "num_recipients": "11", 
                "link": {
                    "url": "http:\/\/www.flickr.com\/photos\/45577359@N00\/2303764416\/sizes\/l\/", 
                    "media": {
                        "src": "http:\/\/farm3.static.flickr.com\/2157\/2303764416_e32b854642_m.jpg", 
                        "type": "photo"
                    }
                }, 
                "stars": "0.0", 
                "is_public": true, 
                "type": "link", 
                "id": 1444374, 
                "is_private": false
            }, 
            {
                "body": "If you're in SF and enjoy city hikes then i recommend this guys route to the top of Twin Peaks. I'd only add that you stop at the cheesery next to the Castro Theatre and get a pound of french roach, just 6.50 and my long time favorite in the city.", 
                "permalink": "http:\/\/pownce.com\/InitApp\/notes\/1444352\/", 
                "sender": {
                    "username": "InitApp", 
                    "friend_count": 10, 
                    "permalink": "http:\/\/pownce.com\/InitApp\/", 
                    "fan_count": 2, 
                    "short_name": "Steven G.", 
                    "country": "United States", 
                    "max_upload_mb": 100, 
                    "first_name": "Steven", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Guy", 
                    "fan_of_count": 2, 
                    "id": 9440, 
                    "is_pro": true, 
                    "location": "San Francisco - [Lower Haight]"
                }, 
                "num_replies": "0", 
                "display_since": "1 day ago", 
                "timestamp": 1204475851, 
                "seconds_since": 153642, 
                "num_recipients": "11", 
                "link": {
                    "url": "http:\/\/www.choisser.com\/hiking\/twinpeaks.html"
                }, 
                "stars": "0.0", 
                "is_public": true, 
                "type": "link", 
                "id": 1444352, 
                "is_private": false
            }, 
            {
                "body": "Not being able to do basic authentication in actionscript 3 outside of AIR in the current flash player just makes me upset. I know there is a perfectly good security reason behind the change, but i just don't want to hear it right now. Arrgghh! I'm going for a walk.", 
                "permalink": "http:\/\/pownce.com\/InitApp\/notes\/1440764\/", 
                "sender": {
                    "username": "InitApp", 
                    "friend_count": 10, 
                    "permalink": "http:\/\/pownce.com\/InitApp\/", 
                    "fan_count": 2, 
                    "short_name": "Steven G.", 
                    "country": "United States", 
                    "max_upload_mb": 100, 
                    "first_name": "Steven", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/I\/n\/i\/InitApp\/9440_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Guy", 
                    "fan_of_count": 2, 
                    "id": 9440, 
                    "is_pro": true, 
                    "location": "San Francisco - [Lower Haight]"
                }, 
                "num_replies": "0", 
                "display_since": "2 days ago", 
                "timestamp": 1204396409, 
                "seconds_since": 233084, 
                "num_recipients": "11", 
                "link": {
                    "url": "http:\/\/livedocs.adobe.com\/flash\/9.0\/ActionScriptLangRefV3\/flash\/net\/URLRequestHeader.html"
                }, 
                "stars": "0.0", 
                "is_public": true, 
                "type": "link", 
                "id": 1440764, 
                "is_private": false
            }, 
            {
                "body": "Just generating a test event for powncer testing", 
                "permalink": "http:\/\/pownce.com\/jaehess\/notes\/1438496\/", 
                "sender": {
                    "username": "jaehess", 
                    "friend_count": 8, 
                    "permalink": "http:\/\/pownce.com\/jaehess\/", 
                    "fan_count": 0, 
                    "short_name": "Jae H.", 
                    "friend_request_count": 0, 
                    "country": "United States", 
                    "age": 28, 
                    "max_upload_mb": 10, 
                    "first_name": "Jae", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Bloke", 
                    "fan_of_count": 2, 
                    "id": 124992, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "0", 
                "display_since": "3 days ago", 
                "timestamp": 1204337114, 
                "event": {
                    "name": "Test Event for Powncer", 
                    "google_map_url": "http:\/\/maps.google.com\/maps?q=http%3A%2F%2Frubyforge.org%2Fproject%2Fpowncer", 
                    "ical": "http:\/\/pownce.com\/ical\/event\/17399", 
                    "location": "http:\/\/rubyforge.org\/project\/powncer", 
                    "date": "2008-03-06 20:00:00", 
                    "yahoo_map_url": "http:\/\/maps.yahoo.com\/maps_result.php?q1=http%3A%2F%2Frubyforge.org%2Fproject%2Fpowncer"
                }, 
                "seconds_since": 292379, 
                "num_recipients": "6", 
                "stars": "0.0", 
                "is_public": true, 
                "type": "event", 
                "id": 1438496, 
                "is_private": false
            }, 
            {
                "body": "Just generating a test link for powncer testing", 
                "permalink": "http:\/\/pownce.com\/jaehess\/notes\/1438389\/", 
                "sender": {
                    "username": "jaehess", 
                    "friend_count": 8, 
                    "permalink": "http:\/\/pownce.com\/jaehess\/", 
                    "fan_count": 0, 
                    "short_name": "Jae H.", 
                    "friend_request_count": 0, 
                    "country": "United States", 
                    "age": 28, 
                    "max_upload_mb": 10, 
                    "first_name": "Jae", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Bloke", 
                    "fan_of_count": 2, 
                    "id": 124992, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "0", 
                "display_since": "3 days ago", 
                "timestamp": 1204334709, 
                "seconds_since": 294784, 
                "num_recipients": "6", 
                "link": {
                    "url": "http:\/\/www.rubyforge.org\/projects\/powncer"
                }, 
                "stars": "0.0", 
                "is_public": true, 
                "type": "link", 
                "id": 1438389, 
                "is_private": false
            }, 
            {
                "body": "Powncer Ruby Gem released soon (with API 2.0 support)", 
                "permalink": "http:\/\/pownce.com\/jaehess\/notes\/1437687\/", 
                "sender": {
                    "username": "jaehess", 
                    "friend_count": 8, 
                    "permalink": "http:\/\/pownce.com\/jaehess\/", 
                    "fan_count": 0, 
                    "short_name": "Jae H.", 
                    "friend_request_count": 0, 
                    "country": "United States", 
                    "age": 28, 
                    "max_upload_mb": 10, 
                    "first_name": "Jae", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Bloke", 
                    "fan_of_count": 2, 
                    "id": 124992, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "0", 
                "display_since": "3 days ago", 
                "timestamp": 1204321981, 
                "seconds_since": 307512, 
                "num_recipients": "6", 
                "stars": "0.0", 
                "is_public": true, 
                "type": "message", 
                "id": 1437687, 
                "is_private": false
            }, 
            {
                "body": "", 
                "permalink": "http:\/\/pownce.com\/jaehess\/notes\/1437678\/", 
                "sender": {
                    "username": "jaehess", 
                    "friend_count": 8, 
                    "permalink": "http:\/\/pownce.com\/jaehess\/", 
                    "fan_count": 0, 
                    "short_name": "Jae H.", 
                    "friend_request_count": 0, 
                    "country": "United States", 
                    "age": 28, 
                    "max_upload_mb": 10, 
                    "first_name": "Jae", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Bloke", 
                    "fan_of_count": 2, 
                    "id": 124992, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "0", 
                "display_since": "3 days ago", 
                "timestamp": 1204321866, 
                "seconds_since": 307627, 
                "num_recipients": "1", 
                "link": {
                    "url": "http:\/\/farm4.static.flickr.com\/3226\/2300990182_36ecb99f01_o.gif", 
                    "media": {
                        "src": "amz:url_thumb_124992-1437678.gif", 
                        "type": "photo"
                    }
                }, 
                "stars": "0.0", 
                "is_public": false, 
                "type": "link", 
                "id": 1437678, 
                "is_private": true
            }, 
            {
                "body": "Word up!", 
                "permalink": "http:\/\/pownce.com\/jaehess\/notes\/1432682\/", 
                "sender": {
                    "username": "jaehess", 
                    "friend_count": 8, 
                    "permalink": "http:\/\/pownce.com\/jaehess\/", 
                    "fan_count": 0, 
                    "short_name": "Jae H.", 
                    "friend_request_count": 0, 
                    "country": "United States", 
                    "age": 28, 
                    "max_upload_mb": 10, 
                    "first_name": "Jae", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Bloke", 
                    "fan_of_count": 2, 
                    "id": 124992, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "0", 
                "display_since": "4 days ago", 
                "timestamp": 1204242481, 
                "seconds_since": 387012, 
                "num_recipients": "1", 
                "stars": "0.0", 
                "is_public": false, 
                "type": "message", 
                "id": 1432682, 
                "is_private": true
            }, 
            {
                "body": " in Miami FL, getting ready for Future of Web Apps tomorrow morning", 
                "permalink": "http:\/\/pownce.com\/jaehess\/notes\/1427909\/", 
                "sender": {
                    "username": "jaehess", 
                    "friend_count": 8, 
                    "permalink": "http:\/\/pownce.com\/jaehess\/", 
                    "fan_count": 0, 
                    "short_name": "Jae H.", 
                    "friend_request_count": 0, 
                    "country": "United States", 
                    "age": 28, 
                    "max_upload_mb": 10, 
                    "first_name": "Jae", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Bloke", 
                    "fan_of_count": 2, 
                    "id": 124992, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "0", 
                "display_since": "5 days ago", 
                "timestamp": 1204175510, 
                "seconds_since": 453983, 
                "num_recipients": "5", 
                "stars": "0.0", 
                "is_public": false, 
                "type": "message", 
                "id": 1427909, 
                "is_private": false
            }, 
            {
                "body": "WORD UP! ", 
                "permalink": "http:\/\/pownce.com\/jaehess\/notes\/1357952\/", 
                "sender": {
                    "username": "jaehess", 
                    "friend_count": 8, 
                    "permalink": "http:\/\/pownce.com\/jaehess\/", 
                    "fan_count": 0, 
                    "short_name": "Jae H.", 
                    "friend_request_count": 0, 
                    "country": "United States", 
                    "age": 28, 
                    "max_upload_mb": 10, 
                    "first_name": "Jae", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Bloke", 
                    "fan_of_count": 2, 
                    "id": 124992, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "0", 
                "display_since": "Feb 14th", 
                "timestamp": 1203045744, 
                "seconds_since": 1583749, 
                "num_recipients": "2", 
                "stars": "0.0", 
                "is_public": false, 
                "type": "message", 
                "id": 1357952, 
                "is_private": false
            }, 
            {
                "body": "Hi, this is the Pownce Brpadcast user which we're going to use very infrequently to send notices. You can unfriend it really easily to stop it. First notice: Pownce has a mobile site too!", 
                "permalink": "http:\/\/pownce.com\/pownce\/notes\/1228007\/", 
                "sender": {
                    "username": "pownce", 
                    "permalink": "http:\/\/pownce.com\/pownce\/", 
                    "short_name": "Pownce B.", 
                    "max_upload_mb": 10, 
                    "first_name": "Pownce", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/p\/o\/w\/pownce\/4134_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/p\/o\/w\/pownce\/4134_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/p\/o\/w\/pownce\/4134_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/p\/o\/w\/pownce\/4134_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/p\/o\/w\/pownce\/4134_large.jpg"
                    }, 
                    "blurb": "I'm used by the Pownce crew to send out infrequent notices about the site to everyone. If you don't want notices, unfriend me below. Cheers!", 
                    "id": 4134, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "138", 
                "display_since": "Jan 23rd", 
                "timestamp": 1201126304, 
                "seconds_since": 3503189, 
                "num_recipients": "154238", 
                "link": {
                    "url": "http:\/\/m.pownce.com"
                }, 
                "stars": "4.0", 
                "is_public": true, 
                "type": "link", 
                "id": 1228007, 
                "is_private": false
            }, 
            {
                "body": "happY holidayS", 
                "permalink": "http:\/\/pownce.com\/Shootee\/notes\/1123675\/", 
                "sender": {
                    "username": "Shootee", 
                    "friend_count": 6, 
                    "permalink": "http:\/\/pownce.com\/Shootee\/", 
                    "fan_count": 3, 
                    "short_name": "Andrew S.", 
                    "country": "United States", 
                    "age": 28, 
                    "max_upload_mb": 10, 
                    "first_name": "Andrew", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Guy", 
                    "fan_of_count": 1, 
                    "id": 127970, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "0", 
                "display_since": "Dec 26th", 
                "timestamp": 1198718988, 
                "seconds_since": 5910505, 
                "num_recipients": "6", 
                "stars": "0.0", 
                "is_public": false, 
                "type": "message", 
                "id": 1123675, 
                "is_private": false
            }, 
            {
                "body": "I KNOW WHERE LITTLE CAESARS IS!!!!!!!", 
                "permalink": "http:\/\/pownce.com\/Shootee\/notes\/1083525\/", 
                "sender": {
                    "username": "Shootee", 
                    "friend_count": 6, 
                    "permalink": "http:\/\/pownce.com\/Shootee\/", 
                    "fan_count": 3, 
                    "short_name": "Andrew S.", 
                    "country": "United States", 
                    "age": 28, 
                    "max_upload_mb": 10, 
                    "first_name": "Andrew", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Guy", 
                    "fan_of_count": 1, 
                    "id": 127970, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "1", 
                "display_since": "Dec 13th", 
                "timestamp": 1197599441, 
                "seconds_since": 7030052, 
                "num_recipients": "6", 
                "stars": "0.0", 
                "is_public": false, 
                "type": "message", 
                "id": 1083525, 
                "is_private": false
            }, 
            {
                "body": "a very good depiction of Python programming Language. mostly.", 
                "permalink": "http:\/\/pownce.com\/Rendered79\/notes\/1057317\/", 
                "sender": {
                    "username": "Rendered79", 
                    "friend_count": 5, 
                    "permalink": "http:\/\/pownce.com\/Rendered79\/", 
                    "fan_count": 0, 
                    "short_name": "Heath W.", 
                    "country": "United States", 
                    "age": 28, 
                    "max_upload_mb": 10, 
                    "first_name": "Heath", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_smedium.png", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_small.png", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_tiny.png", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_medium.png", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_large.png"
                    }, 
                    "blurb": "", 
                    "gender": "Guy", 
                    "fan_of_count": 2, 
                    "id": 124968, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "2", 
                "display_since": "Dec 6th", 
                "timestamp": 1196957214, 
                "seconds_since": 7672279, 
                "num_recipients": "3", 
                "link": {
                    "url": "http:\/\/xkcd.com\/353\/"
                }, 
                "stars": "0.0", 
                "is_public": false, 
                "type": "link", 
                "id": 1057317, 
                "is_private": false
            }, 
            {
                "body": "Who wants to go see hitman with me http:\/\/www.youtube.com\/watch?v=fsP3cJIplfA", 
                "permalink": "http:\/\/pownce.com\/Shootee\/notes\/1052194\/", 
                "sender": {
                    "username": "Shootee", 
                    "friend_count": 6, 
                    "permalink": "http:\/\/pownce.com\/Shootee\/", 
                    "fan_count": 3, 
                    "short_name": "Andrew S.", 
                    "country": "United States", 
                    "age": 28, 
                    "max_upload_mb": 10, 
                    "first_name": "Andrew", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Guy", 
                    "fan_of_count": 1, 
                    "id": 127970, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "0", 
                "display_since": "Dec 4th", 
                "timestamp": 1196830047, 
                "seconds_since": 7799446, 
                "num_recipients": "5", 
                "stars": "0.0", 
                "is_public": false, 
                "type": "message", 
                "id": 1052194, 
                "is_private": false
            }, 
            {
                "body": "I think this is  HJ on a hot friday night http:\/\/xkcd.com\/352\/", 
                "permalink": "http:\/\/pownce.com\/Shootee\/notes\/1052017\/", 
                "sender": {
                    "username": "Shootee", 
                    "friend_count": 6, 
                    "permalink": "http:\/\/pownce.com\/Shootee\/", 
                    "fan_count": 3, 
                    "short_name": "Andrew S.", 
                    "country": "United States", 
                    "age": 28, 
                    "max_upload_mb": 10, 
                    "first_name": "Andrew", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Guy", 
                    "fan_of_count": 1, 
                    "id": 127970, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "1", 
                "display_since": "Dec 4th", 
                "timestamp": 1196826954, 
                "seconds_since": 7802539, 
                "num_recipients": "3", 
                "stars": "0.0", 
                "is_public": false, 
                "type": "message", 
                "id": 1052017, 
                "is_private": false
            }, 
            {
                "body": "Hans Reiser killed noone! Free the King I say!", 
                "permalink": "http:\/\/pownce.com\/Shootee\/notes\/937537\/", 
                "sender": {
                    "username": "Shootee", 
                    "friend_count": 6, 
                    "permalink": "http:\/\/pownce.com\/Shootee\/", 
                    "fan_count": 3, 
                    "short_name": "Andrew S.", 
                    "country": "United States", 
                    "age": 28, 
                    "max_upload_mb": 10, 
                    "first_name": "Andrew", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_large.jpg"
                    }, 
                    "blurb": "", 
                    "gender": "Guy", 
                    "fan_of_count": 1, 
                    "id": 127970, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "2", 
                "display_since": "Nov 6th", 
                "timestamp": 1194382997, 
                "seconds_since": 10246496, 
                "num_recipients": "4", 
                "stars": "1.0", 
                "is_public": false, 
                "type": "message", 
                "id": 937537, 
                "is_private": false
            }, 
            {
                "body": "after a crash in the server used to serve up videos at Revision3 (Digg, podcasts etc...) i noticed an error and it showed this framework in the description. thought you might be interested", 
                "permalink": "http:\/\/pownce.com\/Rendered79\/notes\/931031\/", 
                "sender": {
                    "username": "Rendered79", 
                    "friend_count": 5, 
                    "permalink": "http:\/\/pownce.com\/Rendered79\/", 
                    "fan_count": 0, 
                    "short_name": "Heath W.", 
                    "country": "United States", 
                    "age": 28, 
                    "max_upload_mb": 10, 
                    "first_name": "Heath", 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_smedium.png", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_small.png", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_tiny.png", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_medium.png", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_large.png"
                    }, 
                    "blurb": "", 
                    "gender": "Guy", 
                    "fan_of_count": 2, 
                    "id": 124968, 
                    "is_pro": false, 
                    "location": ""
                }, 
                "num_replies": "0", 
                "display_since": "Nov 5th", 
                "timestamp": 1194272346, 
                "seconds_since": 10357147, 
                "num_recipients": "1", 
                "link": {
                    "url": "http:\/\/www.cherrypy.org\/"
                }, 
                "stars": "0.0", 
                "is_public": false, 
                "type": "link", 
                "id": 931031, 
                "is_private": true
            }
        ]
    }
    JSON
  end
  
  def example_post_note_response
    <<-JSON
    {
      "body": "Foo"
    }
    JSON
  end
  
  def example_post_event_response
    <<-JSON
    {
        "body": "", 
        "permalink": "http:\/\/pownce.com\/jaehess\/notes\/1582358\/", 
        "sender": {
            "username": "jaehess", 
            "friend_count": 8, 
            "permalink": "http:\/\/pownce.com\/jaehess\/", 
            "fan_count": 0, 
            "short_name": "Jae H.", 
            "friend_request_count": 0, 
            "country": "United States", 
            "age": 29, 
            "max_upload_mb": 10, 
            "first_name": "Jae", 
            "profile_photo_urls": {
                "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_smedium.jpg", 
                "small_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_small.jpg", 
                "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_tiny.jpg", 
                "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_medium.jpg", 
                "large_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_large.jpg"
            }, 
            "blurb": "", 
            "gender": "Bloke", 
            "fan_of_count": 2, 
            "id": 124992, 
            "is_pro": false, 
            "location": ""
        }, 
        "num_replies": "0", 
        "display_since": "just now!", 
        "timestamp": 1205988682, 
        "event": {
            "name": "Foo", 
            "google_map_url": "http:\/\/maps.google.com\/maps?q=Bar", 
            "ical": "http:\/\/pownce.com\/ical\/event\/18223", 
            "location": "Bar", 
            "date": "2008-01-16 21:00:00", 
            "yahoo_map_url": "http:\/\/maps.yahoo.com\/maps_result.php?q1=Bar"
        }, 
        "seconds_since": 1, 
        "num_recipients": "8", 
        "stars": "0", 
        "is_public": true, 
        "type": "event", 
        "id": 1582358, 
        "is_private": false
    }
    JSON
  end
  
  def example_post_link_response
    <<-JSON
    {
        "body": "Foo", 
        "permalink": "http:\/\/pownce.com\/jaehess\/notes\/1578652\/", 
        "sender": {
            "username": "jaehess", 
            "friend_count": 8, 
            "permalink": "http:\/\/pownce.com\/jaehess\/", 
            "fan_count": 0, 
            "short_name": "Jae H.", 
            "friend_request_count": 0, 
            "country": "United States", 
            "age": 29, 
            "max_upload_mb": 10, 
            "first_name": "Jae", 
            "profile_photo_urls": {
                "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_smedium.jpg", 
                "small_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_small.jpg", 
                "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_tiny.jpg", 
                "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_medium.jpg", 
                "large_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_large.jpg"
            }, 
            "blurb": "", 
            "gender": "Bloke", 
            "fan_of_count": 2, 
            "id": 124992, 
            "is_pro": false, 
            "location": ""
        }, 
        "num_replies": "0", 
        "display_since": "just now!", 
        "timestamp": 1205959197, 
        "seconds_since": 0, 
        "num_recipients": "1", 
        "link": {
            "url": "http:\/\/powncer.rubyforge.org"
        }, 
        "stars": "0", 
        "is_public": false, 
        "type": "link", 
        "id": 1578652, 
        "is_private": true
    }
    JSON
  end
  
end