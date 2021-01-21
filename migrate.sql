UPDATE wp_options SET option_value =  'https://test.cyberwhale.tech'  where option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET guid = replace(guid, 'https://cyberwhale.tech','https://test.cyberwhale.tech');
UPDATE wp_posts SET post_content = replace(post_content, 'https://cyberwhale.tech', 'https://test.cyberwhale.tech');
UPDATE wp_postmeta SET meta_value = replace(meta_value,'https://cyberwhale.tech','https://test.cyberwhale.tech');