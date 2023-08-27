environment = "Test"
application = "Application-Test"
auth0_client_id = "Will need to Hydrate from AKV"
auth0_client_secret = "Will need to Hydrate from AKV"

initiate_login_uri = "http://localhost:61189/test"

callbacks = [
    "https://localhost:61189/callback",
    "https://test.example.com/callback"
]

allowed_logout_urls = [
    "https://localhost:61189/",
    "https://test.example.com/"
]

allowed_origins = [
    "https://localhost:61189/",
    "https://test.example.com/"
]

web_origins     = [
    "https://localhost:61189/",
    "https://test.example.com/"
]
