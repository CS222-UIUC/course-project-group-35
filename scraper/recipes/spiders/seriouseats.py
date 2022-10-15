import json
import scrapy

class SeriouseatsSpider(scrapy.spiders.SitemapSpider):
    name = 'seriouseats'
    
    sitemap_urls = ['http://seriouseats.com/sitemap.xml']

    def parse(self, response):
        script = response.css('script[type="application/ld+json"]::text').get()
        if script is None:
            return
        print(script)
