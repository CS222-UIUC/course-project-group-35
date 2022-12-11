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
            "URL" : response.url,
            "Title" : temp[0]['headline'],
            "Ingredients" : temp[0]['recipeIngredient'],
            "Nutritional Information" : {
                "Calories" : temp[0]["nutrition"]["calories"],
                "Protein" : temp[0]["nutrition"]["proteinContent"],
                "Fat" : temp[0]["nutrition"]["fatContent"], 
                "Saturated Fat" : temp[0]["nutrition"]["saturatedFatContent"],
                "Unsaturated Fat" : temp[0]["nutrition"]["unsaturatedFatContent"],
                "Carbohydrates" : temp[0]["nutrition"]["carbohydrateContent"],
                "Sugar" : temp[0]["nutrition"]["sugarContent"],
                "Cholesterol" : temp[0]["nutrition"]["cholesterolContent"],
                "Fiber" : temp[0]["nutrition"]["fiberContent"],
                "Sodium" : temp[0]["nutrition"]["sodiumContent"]
            }
            }