from scrapy import Item, Field
from scrapy.contrib.spiders import CrawlSpider, Rule
from scrapy.contrib.linkextractors import LinkExtractor

class Emote(Item):
     emote = Field()
     tag = Field()


class DongerSpider(CrawlSpider):
    name = 'dongerlist'
    start_urls = ['http://dongerlist.com/category/ameno',]
    allowed_domains = ['dongerlist.com']
    rules = (
         Rule(LinkExtractor(allow=(r'/category/.*', )), callback='parse_page'),
    )

    def parse_page(self, response):
        tag = response.css('a.is-active::text').extract()
        return [Emote(emote=e.extract(), tag=tag) for e in response.css("li > textarea.donger::text")]
