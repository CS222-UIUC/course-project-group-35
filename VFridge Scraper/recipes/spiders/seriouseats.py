import imp
import scrapy
import json


class SeriouseatsSpider(scrapy.spiders.SitemapSpider):
    name = 'seriouseats'
    sitemap_urls = ['https://www.seriouseats.com/sitemap.xml']

    def parse(self, response):

        script = response.css('script[type="application/ld+json"]::text').get()
        
        if script is None:
            return

        temp = json.loads(script)

        if temp[0]['@type'] != ['Recipe']:
            return

        # ingredients = ""
        # idx = 0
        # print(type(temp[0]['recipeIngredient']))
        # for ingredient in temp[0]['recipeIngredient']:
        #     idx += 1
        #     ingredients += ingredient 
        #     if (idx == (len(temp[0]['recipeIngredient']) - 1)):
        #         break
        #     ingredients += " -> "
        # print(ingredients)
        
        yield {
            "url" : response.url,
            "title" : temp[0]['headline'],
            "ingredients" : temp[0]['recipeIngredient'],
            "nutrition" : {
                "calories" : temp[0]["nutrition"]["calories"],
                "protein" : temp[0]["nutrition"]["proteinContent"],
                "fat" : temp[0]["nutrition"]["fatContent"], 
                "carbohydrate" : temp[0]["nutrition"]["carbohydrateContent"],
                "sugar" : temp[0]["nutrition"]["sugarContent"],
                "cholesterol" : temp[0]["nutrition"]["cholesterolContent"],
                "fiber" : temp[0]["nutrition"]["fiberContent"],
                "sodium" : temp[0]["nutrition"]["sodiumContent"],
                "saturated fat" : temp[0]["nutrition"]["saturatedFatContent"],
                "unsaturated fat" : temp[0]["nutrition"]["unsaturatedFatContent"]
            }
            }