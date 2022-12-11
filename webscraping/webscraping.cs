namespace VirtualFridgeScraper
{
using NScrape;
using NScrape.Forms;

    class TestScraper : Scraper {
        public TestScraper( string html ) : base( html ) {
        }

        public string GetConditions() {
            var node = HtmlDocument.DocumentNode.Descendants().SingleOrDefault( n => n.Attributes.Contains( "class" ) && n.Attributes["class"].Value == "myforecast-current" );

            if ( node != null ) {
                return node.InnerText;
            }

            throw new ScrapeException( "Could not scrape conditions.", Html );
        }

        public string GetTemperature() {
            var node = HtmlDocument.DocumentNode.Descendants().SingleOrDefault( n => n.Attributes.Contains( "class" ) && n.Attributes["class"].Value == "myforecast-current-lrg" );

            if ( node != null ) {
                return node.InnerText.Replace( "&deg;", "°" );
            }

            throw new ScrapeException( "Could not scrape temperature.", Html );
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            var webClient = new WebClient();
            var form = new BasicHtmlForm( webClient );
            form.Load( new Uri( "http://www.weather.gov/" ), new KeyValuePair<string, string>( "name", "getForecast" ) );
            form.InputControls.Single( c => c.Name == "inputstring" ).Value = "fairbanks, ak";

            using ( var response = form.Submit() ) {
                if ( response.ResponseType == WebResponseType.Html ) {
                    var scraper = new TestScraper( ( ( HtmlWebResponse )response ).Html );

                    var conditions = scraper.GetConditions();
                    Console.WriteLine( "Conditions: {0}", conditions );
                    var temperature = scraper.GetTemperature();
                    Console.WriteLine( "Temperature: {0}", temperature );
                }
            }
        }
    }
}