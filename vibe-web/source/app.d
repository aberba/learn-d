import vibe.vibe;

void main()
{
	auto router = new URLRouter;
	router.registerWebInterface(new WebService);

	auto settings = new HTTPServerSettings;
	settings.port = 8080;
	settings.bindAddresses = ["::1", "127.0.0.1"];
	listenHTTP(settings, router);

	logInfo("Please open http://127.0.0.1:8080/ in your browser.");
	runApplication();
}

class WebService {
   
    void index(HTTPServerRequest req, HTTPServerResponse res)
    {
         res.writeBody("Hello, World!");
    }
}
