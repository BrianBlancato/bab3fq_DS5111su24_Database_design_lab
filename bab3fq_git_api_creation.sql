create or replace api integration bab3fq_git_api_integration
    api_provider = git_https_api
    api_allowed_prefixes = ('https://github.com/BrianBlancato')
    enabled = true
    -- allowed_authentication_secrets = all
    -- comment='<comment>';