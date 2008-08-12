class Test::Unit::TestCase
  
  def example_error
    <<-JSON
    {
        "error": {
            "status_code": 404, 
            "message": "Ack. Not found.", 
            "request": "http:\/\/api.pownce.com\/2.0\/public_notes_lists\/for\/zzzzzzz.json"
        }
    }
    JSON
  end
  
  def example_profile_for
    <<-JSON
    {
        "username": "jaehess", 
        "friend_count": 6, 
        "permalink": "http:\/\/pownce.com\/jaehess\/", 
        "fan_count": 0, 
        "short_name": "Jae H.", 
        "country": "United States", 
        "age": 28, 
        "first_name": "Jae", 
        "max_upload_mb": 10, 
        "blurb": "", 
        "gender": "Bloke", 
        "fan_of_count": 1, 
        "profile_photo_urls": {
            "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_smedium.jpg", 
            "small_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_small.jpg", 
            "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_tiny.jpg", 
            "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_medium.jpg", 
            "large_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_large.jpg"
        }, 
        "is_pro": false,
        "id": 124992,
        "location": ""
    }
    JSON
  end
  
  def example_profile_for_powncertest
    <<-JSON
    {
        "username": "powncertest", 
        "friend_count": 1, 
        "permalink": "http:\/\/pownce.com\/powncertest\/", 
        "fan_count": 0, 
        "short_name": "Powncer T.", 
        "country": "United States", 
        "max_upload_mb": 10, 
        "first_name": "Powncer", 
        "profile_photo_urls": {
            "smedium_photo_url": "http:\/\/pownce.com\/img\/user-sm.gif", 
            "small_photo_url": "http:\/\/pownce.com\/img\/user-s.gif", 
            "tiny_photo_url": "http:\/\/pownce.com\/img\/user-t.gif", 
            "medium_photo_url": "http:\/\/pownce.com\/img\/user-m.gif", 
            "large_photo_url": "http:\/\/pownce.com\/img\/user-l.gif"
        }, 
        "blurb": "", 
        "gender": "None of the Above", 
        "fan_of_count": 1, 
        "id": 171628, 
        "is_pro": false, 
        "location": ""
    }
    JSON
  end
  
  def example_profile_for_leah
    <<-JSON
    {
        "username": "leahculver", 
        "friend_count": 313, 
        "permalink": "http:\/\/pownce.com\/leahculver\/", 
        "fan_count": 4283, 
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
    }
    JSON
  end
  
  def example_profile_for_david
    <<-JSON
    {
        "username": "davidbenedic", 
        "friend_count": 1, 
        "permalink": "http:\/\/pownce.com\/davidbenedic\/", 
        "fan_count": 0, 
        "short_name": "David B.", 
        "country": "United States", 
        "age": 25, 
        "max_upload_mb": 10, 
        "first_name": "David", 
        "profile_photo_urls": {
            "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/d\/a\/v\/davidbenedic\/171125_smedium.jpg", 
            "small_photo_url": "http:\/\/pownce.com\/profile_photos\/d\/a\/v\/davidbenedic\/171125_small.jpg", 
            "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/d\/a\/v\/davidbenedic\/171125_tiny.jpg", 
            "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/d\/a\/v\/davidbenedic\/171125_medium.jpg", 
            "large_photo_url": "http:\/\/pownce.com\/profile_photos\/d\/a\/v\/davidbenedic\/171125_large.jpg"
        }, 
        "blurb": "", 
        "gender": "Gentleman", 
        "fan_of_count": 1, 
        "id": 171125, 
        "is_pro": false, 
        "location": ""
    }
    JSON
  end
  
  def example_fans_for
    <<-JSON
    {
        "fans": {
            "total_count": 0, 
            "has_prev_page": false, 
            "users": [], 
            "has_next_page": false
        }
    }
    JSON
  end
  
  def example_friends_for
    <<-JSON
    {
        "friends": {
            "total_count": 6, 
            "has_prev_page": false, 
            "users": [
                {
                    "username": "Shootee", 
                    "friend_count": 6, 
                    "permalink": "http:\/\/pownce.com\/Shootee\/", 
                    "fan_count": 3, 
                    "short_name": "Andrew S.", 
                    "country": "United States", 
                    "age": 28, 
                    "first_name": "Andrew", 
                    "max_upload_mb": 10, 
                    "blurb": "", 
                    "gender": "Guy", 
                    "fan_of_count": 1, 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/h\/o\/Shootee\/127970_large.jpg"
                    }, 
                    "is_pro": false, 
                    "id": 127970, 
                    "location": ""
                }, 
                {
                    "username": "davidbenedic", 
                    "friend_count": 1, 
                    "permalink": "http:\/\/pownce.com\/davidbenedic\/", 
                    "fan_count": 0, 
                    "short_name": "David B.", 
                    "country": "United States", 
                    "age": 25, 
                    "first_name": "David", 
                    "max_upload_mb": 10, 
                    "blurb": "", 
                    "gender": "Gentleman", 
                    "fan_of_count": 1, 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/d\/a\/v\/davidbenedic\/171125_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/d\/a\/v\/davidbenedic\/171125_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/d\/a\/v\/davidbenedic\/171125_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/d\/a\/v\/davidbenedic\/171125_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/d\/a\/v\/davidbenedic\/171125_large.jpg"
                    }, 
                    "is_pro": false, 
                    "id": 171125, 
                    "location": ""
                }, 
                {
                    "username": "Rendered79", 
                    "friend_count": 5, 
                    "permalink": "http:\/\/pownce.com\/Rendered79\/", 
                    "fan_count": 0, 
                    "short_name": "Heath W.", 
                    "country": "United States", 
                    "age": 28, 
                    "first_name": "Heath", 
                    "max_upload_mb": 10, 
                    "blurb": "", 
                    "gender": "Guy", 
                    "fan_of_count": 2, 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_smedium.png", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_small.png", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_tiny.png", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_medium.png", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/R\/e\/n\/Rendered79\/124968_large.png"
                    }, 
                    "is_pro": false, 
                    "id": 124968, 
                    "location": ""
                }, 
                {
                    "username": "michaelw", 
                    "friend_count": 1, 
                    "permalink": "http:\/\/pownce.com\/michaelw\/", 
                    "fan_count": 1, 
                    "short_name": "Michael W.", 
                    "country": "United States", 
                    "first_name": "Michael", 
                    "max_upload_mb": 10, 
                    "blurb": "", 
                    "gender": "Male", 
                    "fan_of_count": 1, 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/m\/i\/c\/michaelw\/125258_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/m\/i\/c\/michaelw\/125258_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/m\/i\/c\/michaelw\/125258_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/m\/i\/c\/michaelw\/125258_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/m\/i\/c\/michaelw\/125258_large.jpg"
                    }, 
                    "is_pro": false, 
                    "id": 125258,
                    "location": ""
                }, 
                {
                    "username": "Mukid1734", 
                    "friend_count": 2, 
                    "permalink": "http:\/\/pownce.com\/Mukid1734\/", 
                    "fan_count": 0, 
                    "short_name": "Sean D.", 
                    "country": "United States", 
                    "first_name": "Sean", 
                    "max_upload_mb": 10, 
                    "blurb": "", 
                    "gender": "Male", 
                    "fan_of_count": 1, 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/img\/user-sm.gif", 
                        "small_photo_url": "http:\/\/pownce.com\/img\/user-s.gif", 
                        "tiny_photo_url": "http:\/\/pownce.com\/img\/user-t.gif", 
                        "medium_photo_url": "http:\/\/pownce.com\/img\/user-m.gif", 
                        "large_photo_url": "http:\/\/pownce.com\/img\/user-l.gif"
                    }, 
                    "is_pro": false, 
                    "id": 125050, 
                    "location": ""
                }, 
                {
                    "username": "Summerhess", 
                    "friend_count": 4, 
                    "permalink": "http:\/\/pownce.com\/Summerhess\/", 
                    "fan_count": 0, 
                    "short_name": "summer h.", 
                    "country": "United States", 
                    "age": 29, 
                    "first_name": "summer", 
                    "max_upload_mb": 10, 
                    "blurb": "", 
                    "gender": "Female", 
                    "fan_of_count": 1, 
                    "profile_photo_urls": {
                        "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/u\/m\/Summerhess\/125221_smedium.jpg", 
                        "small_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/u\/m\/Summerhess\/125221_small.jpg", 
                        "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/u\/m\/Summerhess\/125221_tiny.jpg", 
                        "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/u\/m\/Summerhess\/125221_medium.jpg", 
                        "large_photo_url": "http:\/\/pownce.com\/profile_photos\/S\/u\/m\/Summerhess\/125221_large.jpg"
                    }, 
                    "is_pro": false, 
                    "id": 125221,
                    "location": ""
                }
            ], 
            "has_next_page": false
        }
    }
    JSON
  end
  
  def example_public_note_for
    <<-JSON
    {
      "body": "Powncer Ruby Gem released soon (with API 2.0 support)", 
      "permalink": "http:\/\/pownce.com\/jaehess\/notes\/1437687\/", 
      "sender": {
          "username": "jaehess", 
          "friend_count": 6, 
          "permalink": "http:\/\/pownce.com\/jaehess\/", 
          "fan_count": 0, 
          "short_name": "Jae H.", 
          "country": "United States", 
          "age": 28, 
          "first_name": "Jae", 
          "max_upload_mb": 10, 
          "blurb": "", 
          "gender": "Bloke", 
          "fan_of_count": 1, 
          "profile_photo_urls": {
              "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_smedium.jpg", 
              "small_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_small.jpg", 
              "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_tiny.jpg", 
              "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_medium.jpg", 
              "large_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_large.jpg"
          }, 
          "is_pro": false, 
          "location": ""
      }, 
      "num_replies": "0", 
      "display_since": "3 min ago", 
      "timestamp": 1204321981, 
      "seconds_since": 448, 
      "num_recipients": "6", 
      "stars": "0.0", 
      "is_public": true, 
      "type": "message", 
      "id": 1437687, 
      "is_private": false
    }
    JSON
  end
  
  def example_public_notes_for(length=20)
    <<-JSON
    {
      "notes": [#{Array.new(length).fill(example_public_note_for).join(",")}]
    }
    JSON
  end
  
  def example_public_notes(length=20, page=1)
    # This might not be needed to be called ever in a seperate mock
    # For now, it is seperated
    example_public_notes_for(length)
  end
  
  def example_public_messages
    example_public_notes(20)
  end
  
  def example_public_link_for
    <<-JSON
    {
      "body": "Just generating a test link for powncer testing", 
      "permalink": "http:\/\/pownce.com\/jaehess\/notes\/1438389\/", 
      "sender": {
          "username": "jaehess", 
          "friend_count": 6, 
          "permalink": "http:\/\/pownce.com\/jaehess\/", 
          "fan_count": 0, 
          "short_name": "Jae H.", 
          "country": "United States", 
          "age": 28, 
          "first_name": "Jae", 
          "max_upload_mb": 10, 
          "blurb": "", 
          "gender": "Bloke", 
          "fan_of_count": 3, 
          "profile_photo_urls": {
              "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_smedium.jpg", 
              "small_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_small.jpg", 
              "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_tiny.jpg", 
              "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_medium.jpg", 
              "large_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_large.jpg"
          }, 
          "is_pro": false, 
          "location": ""
      }, 
      "num_replies": "0", 
      "display_since": "2 min ago", 
      "timestamp": 1204334709, 
      "seconds_since": 284, 
      "num_recipients": "6", 
      "link": {
          "url": "http:\/\/www.rubyforge.org\/projects\/powncer"
      }, 
      "stars": "0.0", 
      "is_public": true, 
      "type": "link", 
      "id": 1438389, 
      "is_private": false
    }
    JSON
  end
  
  def example_public_links_for
    <<-JSON
    {
      "notes": [#{example_public_link_for}]
    }
    JSON
  end
  
  def example_public_links
    <<-JSON
    {
      "notes": [#{Array.new(20).fill(example_public_link_for).join(",")}]
    }
    JSON
  end
  
  def example_public_event_for
    <<-JSON
    {
      "body": "Just generating a test event for powncer testing", 
      "permalink": "http:\/\/pownce.com\/jaehess\/notes\/1438496\/", 
      "sender": {
          "username": "jaehess", 
          "friend_count": 6, 
          "permalink": "http:\/\/pownce.com\/jaehess\/", 
          "fan_count": 0, 
          "short_name": "Jae H.", 
          "country": "United States", 
          "age": 28, 
          "first_name": "Jae", 
          "max_upload_mb": 10, 
          "location": "", 
          "gender": "Bloke", 
          "fan_of_count": 3, 
          "profile_photo_urls": {
              "smedium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_smedium.jpg", 
              "small_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_small.jpg", 
              "tiny_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_tiny.jpg", 
              "medium_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_medium.jpg", 
              "large_photo_url": "http:\/\/pownce.com\/profile_photos\/j\/a\/e\/jaehess\/124992_large.jpg"
          }, 
          "is_pro": false
      }, 
      "num_replies": "0", 
      "display_since": "just now!", 
      "timestamp": 1204337114, 
      "event": {
          "name": "Test Event for Powncer", 
          "google_map_url": "http:\/\/maps.google.com\/maps?q=http%3A%2F%2Frubyforge.org%2Fproject%2Fpowncer", 
          "ical": "http:\/\/pownce.com\/ical\/event\/17399", 
          "location": "http:\/\/rubyforge.org\/project\/powncer", 
          "date": "2008-03-06 20:00:00", 
          "yahoo_map_url": "http:\/\/maps.yahoo.com\/maps_result.php?q1=http%3A%2F%2Frubyforge.org%2Fproject%2Fpowncer"
      }, 
      "seconds_since": 23, 
      "num_recipients": "6", 
      "stars": "0.0", 
      "is_public": true, 
      "type": "event", 
      "id": 1438496, 
      "is_private": false
    }
    JSON
  end
  
  def example_public_events
    <<-JSON
    {
      "notes": [#{Array.new(20).fill(example_public_event_for).join(",")}]
    }
    JSON
  end
  
end