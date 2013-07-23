<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="reveal"/>
    <title></title>
</head>
<body>

    <section data-transition="fade" data-background="#00aed8" class="section-card">
        <h1>Fundamentals of Responsive Javascript Single Page Web Applications</h1>
        <img src="${resource(dir: 'images', file: 'cantina-logo-white.png')}" alt="Cantina">
        <p>
            Steve Pember / <a href="http://twitter.com/svpember">@svpember</a>
        </p>
        
    </section>

    <section data-background="http://localhost:8080${resource(dir: 'images', file: 'js-logo.png')}"
             data-background-size="55%">
        <aside class="notes">
        Let's talk about javascript.. and user engagement
        </aside>
    </section>

    <section data-background="#00aed8">
        <h2>A Web Application's Goal is provide an Engaging User Experience</h2>
        <aside class="notes">
            Engaging, memorable... Fun!
        </aside>
    </section>

    <section>
        <img src="${resource(dir: 'images', file: 'js-king.jpg')}" alt="JS is the King"/>
        <aside class="notes">
            JS is by far the better system for building more engaging experiences<br/>
            - it, and HTML 5, are CRUSHING its competition. Flash, Flex, and it's ilk - things we used to use a couple years ago - have been marginalized by this quirky little language.<br/>
        </aside>
    </section>

    <section>
        <h2>What makes an Engaging Experience?</h2>
        <ul>
            <li><h3>Content</h3></li>
            <li><h3>Design</h3></li>
            <li class="fragment grow"><h3>Performance</h3></li>
        </ul>

        <aside class="notes">
            *Useful content, **eye-catching design, **tight/fast performance or UX<br/><br/>
            "CONTENT IS KING" - Bill Gates. it's true, no customer is going to use your app without great content<br/>
            I'm assuming everyone's primary occupation is that of a developer or engineer. Does anyone here primarily design things for work?<br/>
            IF SO: I hope you're not a pixel-perfectionist. Assume that your design will flow<br/>
            * Today, I'll focus on User Interaction Performance<br/>
        </aside>
    </section>

    <section id="ttg" data-background="#fff">
        <img src="${resource(dir: 'images', file: '1000_ttg.jpg')}" alt="Time to Glass: 1000ms"/>
        <aside class="notes">
            *Has anyone heard of the 1000ms Time to Glass challenge?<br/>
            *Deals with a study done that shows users give up on your application if nothing appears or there's no reaction after 1s when the user performs some action<br/>
            *App Performance is a multi day lecture, and I'm happy to discuss outside of this.<br/>


            
        </aside>
    </section>

    <section data-background="#fff">
        <img src="${resource(dir: 'images', file: 'desktop-vs-mobile-1.png')}" alt="Page Load times"/>
        <a href="http://analytics.blogspot.com/2012/04/global-site-speed-overview-how-fast-are.html">http://analytics.blogspot.com/2012/04/global-site-speed-overview-how-fast-are.html</a>

        <aside class="notes">
            * Desktop: Mean 6.5s, Median: 2.5, Mobile: Mean 10+s, Median 4.5
            * Had one client with 3+ second load times. Claimed happily that they were in the top 30% of their competitors, meaning everyone else was slower<br/>
            * Internally, I'm thinking "Not exactly something to be proud of. Take responsibility, ownership in what you're coding and make it the best it can be."
            
        </aside>
    </section>

    <section>
        <h2>Control What you Can</h2>

        <aside class="notes">
            * Many factors in web performance, but some of it is out of your hands. Particularly, web latency. Get more into it later
            Be adverse to initiating http requests<br/>
            Only download what you need at any given point <br/>            
        </aside>
    </section>

    <section>
        <h2>Triggering a full page refresh is <span class="focus-word">horrible</span> UX</h2>
        <aside class="notes">
            * Triggering a full page refresh is one of the slowest things you can do for a user experience<br/>
            * Why? Causing a full refresh initiates requests for every object in your page. <br/>
            * Your code could be great, but having bad UX really sours the experience<br/>
        </aside>
    </section>

    <section>
        <img src="${resource(dir: 'images', file: 'blank_screen.png')}" alt="Blank screens are bad"/>
        <aside class="notes">
            You never want to have your users see this, or:<br/>
            Site they were just on, clicked a link, and wait for a bit before the screen changes<br/>
        </aside>
    </section>

    <section>
        <img src="${resource(dir: 'images', file: 'multiple_devices.jpg')}" alt="Multiple Devices"/>
        <aside class="notes">
            Furthermore, triggering a full refresh can send large amounts of data to your users <br/><br/>unless your cache and expire headers are top notch, which mitigates it<br/><br/>
            ** Respect your mobile users with their slow connection speeds and data caps<br/>
        </aside>
    </section>

    <section>
        <h2>Goal: Update Page content based on user input without full refresh</h2>
        <h3 class="fragment fade-in">Could we just use a sprinkling of AJAX / PJAX?</h3>
        <aside class="notes">
            Ok, so if we want to be stingy about the number of requests we make for data or new objects, we should 
            only ask for new objects or update the page content based on some user input event<br/>
            *How? could we just use a sprinkinling of AJAX / PJAX? Maybe a bit of Jquery?
        </aside>
    </section>

    <section data-background="#fff">
        <img src="${resource(dir: 'images', file: 'disapproval.jpg')}" alt="I disapprove">
        <aside class="notes">
            No....; it'll get out of hand quickly, I assure you.<br/>
            I've seen plenty of clients' sites who attempted this and ended up with a morass of JS files and JQuery plugins.<br/> Executing on every page<br/>
            So how do we add an engaging user experience while minimizing data transfers?<br/>
        </aside>
    </section>

    <section>
        <h2>You should spend at least as much engineering on your Front End as your Back End</h2>
        <aside class="notes">
            Well, the the first thing to understand is:<br/>
            *slow*<br/>
            MAybe even more; Grails makes the back end so easy.<br/>
        </aside>
    </section>


    <section>
        <img src="${resource(dir:'images', file:'mvcmv-crude.jpg')}" alt="MVCMV"/>
        <aside class="notes">
        Ideally, even, your app should be two separate applications. <br/>
        Shift some responsibilities from server to client (Decoupling, previous talk)<br/>
        Server + backend communicating via an API, or chunks of html (more later)<br/>
        </aside>
    </section>

    <section>
        <h3>Finally have the Tools</h3>
        <img src="${resource(dir:'images', file:'dev-tools.jpg')}" alt ="Chrome dev tools" />
        <aside class="notes">
            It's only recently become viable<br/>
            This is a shot of the Chrome dev tools, but we also have testing, package management, build tools, etc.
            Take hold of them!</br>
        </aside>
    </section>

    <section data-markdown>
        ## Bonus: your business now has an API
        ### (Embrace SOA!)
    </section>

    <section data-markdown>
        ## Quick Demo! 
    </section>

<!-- Act 2 -->

    <section data-transition="fade" data-background="#00aed8">
        <h1>Single Page Apps are the future</h1>
         <h2>If you're not doing it, you <span class="focus-word-inverse">will</span> be left behind</h2>
        <aside class="notes">
            Your competitors are going to be doing it
        </aside>
    </section>

    <section>
        <p class="quote">"Application architectures are changing. The traditional model that the Servlet era APIs were designed for is becoming valid for fewer and fewer cases."</p>

        <p class="quote">"Mobile and Rich web apps are driving this revolution. Many folks are simply serving up JSON to be consumed by rich clients. So where does Grails fit into this world?"</p>

        <p class="fragment fade-in"><span class="focus-word">Graeme Rocher</span> / <a href="http://grails.io/day/2013/04/22/" target="_blank">April 22, 2013</a></p>

        <aside class="notes">
            I know my previous claim is full of hyperbole, but it's not entirely off<br/>
            This is the only time I'll read straight off of a slide, I promise. *READ SLIDE*<br/>
            Sounds a bit begrudging, eh?<br/>
            He was calling out how Grails will need to change in 3.0 to adapt to the future. Also, Peter Ledbrook had a talk
            on this yesterday

        </aside>
    </section>

    <section data-transition="fade" data-background="#00aed8">
        <h1>SPA Fundamentals</h1>
        <aside class="notes">
            Hopefully by now your interest is at least vaguely piqued<br/>
            Let's talk about the Fundamentals for building one of these things... 
            
        </aside>
    </section>

    <section>
        <h1>?</h1>
        <img src="${resource(dir:'images', file: 'grails-icon.png')}" alt="Grails"/>
        <aside class="notes">and why Grails is a great fit, and will continue to be a great fit as we transition to 3.0<br/></aside>
    </section>

    <section data-background="#fff">
        <img src="${resource(dir:'images', file: 'database.jpg')}" alt="Gorm" class="multi-pic"/>
        <img src="${resource(dir:'images', file: 'security.gif')}" alt="Security" class="multi-pic"/>
        <img src="${resource(dir:'images', file: 'plugins.jpg')}" alt="Plugins" class="multi-pic"/>
        <aside class="notes">
            Incredibly strong on the server side, which is exactly what we need for this sort of thing<br/>
            Aside from the usual reasons, I highlight Security, Persistence, Plugins<br/>
            *I mention Security separately because Spring Security is just so Excellent.<br/>
            * Also, Shiro! I asked the other night, "What else would you use besides SS?" -> angry stares<br/>
            Combine this with some of the features coming in 2.3 and 3.0, and perhaps an option to drop the filter chain stack, if not necessary. Anyone see Colin's presentation "There and back again" yesterday?<br/>
        </aside>
    </section>

    <section data-transition="fade" data-background="#00aed8">
        <h1>Responsive Applications</h1>
    </section>

    <section>
        <h2>Responsive Design</h2>
        <ul>
            <li><h3>Flexible Grids</h3></li>
            <li><h3>Flexible Images</h3></li>
            <li><h3>Media Queries</h3></li>            
            <li class="fragment fade-in"><h3>Responsive Architecture</h3></li>
            <li class="fragment fade-in"><h3>Responsive Responses</h3></li>
        </ul>
    </section>

    <section>
        <h2>Dynamically load / unload Interactive features based on device capabilities</h2>
        <aside class="notes">
            Especially true on Mobile
        </aside>
    </section>

    <section>
        <h2>... AKA Progressive Enhancement</h2>
        <aside class="notes">
            Another term for this philosophy is "Progressive enhancement"<br/>
            Although we're focused on the JS end<br/>
        </aside>
    </section>

    <section data-background="#fff">
        <img src="${resource(dir:'images', file: 'yin_yang3.gif')}" alt="Yin and Yang"/>
        <aside class="notes">
            I feel like Responsive Design and PE are like the Yin and Yang of web dev<br/>
            Difficult to mention one without the other<br/>
        </aside>
    </section>

    <section>
        <h2>TIP: Use Modernizr to responsively adjust JS capabilities</h2>
        <pre>
            <code data-trim class="javascript">
var smallBreak = Modernizr.mq("only all and (max-width: 400px)"));
//... later on ...
if (smallBreak) {
    // do something for a small screen
}

//
// On resize, recalculate the break vars
            </code>
        </pre>
        <aside class="notes">
            One very useful tool for achieving this is Modernizr, which does all sorts of feature detection for you <br/>
        </aside>
    </section>

    <section data-transition="fade" data-background="#00aed8">
        <h1>API Design</h1>

        <aside class="notes">
            There's a presentation going on I believe right now on this very subject.<br/>
            Grails makes a decent platform for serving up your api, especially for querying.<br/><br/>
            easy Caching, easy usage of alt data stores, renderers, etc.<br/>
            More than 'render as JSON', there was another talk this morning that I unfortunately missed on this very subject<br/>


        </aside>
    </section>

    <section data-markdown>
        ## The Client should only ask for what it needs based on device capabilities
        ### (start small and build up)
    </section>

    <section data-markdown>
        ## AKA Progressive API Enhancement
    </section>

    <section>
        <pre><code>
//
// A simple example. Build up a map and render it as opposed to a regular DO
//            
Author author = Author.get(params.id)
Map json = [ "name": author.name, "id": author.id, 
            bookCount: Book.countByAuthor(author) ] 
if (params.addBooks) {
    json["books"] = Book.findAllByAuthor(author).collect { book ->
        book.toJSON() //perhaps a .toJson() method for convenience on a DO?
        // in Grails 2.3 we'll have custom renderers we could use!
    }             
}

render json as JSON
        </code></pre>
    </section>


    <section data-markdown>
        ## Bandwidth vs Latency
        #### (more data vs more requests)
    </section>

    <section>
        <img src="${resource(dir: 'images', file: 'cell_phone_tower.jpg')}" alt="cell phone network have high latency" />
        <h3>Expect 100-1000ms latency</h3>
        <aside class="notes">Note that this is especially true for Mobile users. Expect an additional overhead of 100 to 1000ms PER OBJECT REQUEST on a mobile phone<br/><br/>
        Virgin Mobile FAQ: 500ms
        </aside>
    </section>

    <section data-background="http://localhost:8080${resource(dir: 'images', file: 'balancingact.jpg')}"
             data-background-size="60%"
    >
        <aside class="notes">Particularly on Mobile, it's a bit of a balancing act</br>
            Respect mobile users' data limitations, but keep # of requests down</br>
            Story about 4megs of JSON per request</br>   
        </aside>
    </section>    

    <section>
        <h2>Grails 2.3+: REST API</h2>
        <pre>
            <code data-trim>
import grails.rest.*
@Resource(uri='/books')
class Book {

    String title

    static constraints = {
        title blank:false
    }
}
            </code>
        </pre>
    </section>

    <section>
        <h2>But Responsive Responses? ....</h2>
        <aside class="notes">
            Unfortunately, to make our api calls responsive and adjust to query parameters, we'll need to still use the old style, for now.
        </aside>
    </section>

    <section>
        <pre><code data-trim>
class BookController extends RestfulController {
    static responseFormats = ['json', 'xml']
    BookController() {
        super(Book)
    }
    @Override
    Book queryForResource(Serializable id) {
        Book.where {
            id == id && author.id = params.authorId
        }.find()
    }

}            

        </code></pre>

        <aside class="notes">
            * Still want to use normal controllers
            * Or perhaps the new RestfulController approach
            * update, read about it
        </aside>
    </section>
    
    <section data-transition="fade" data-background="#00aed8">
        <h1>9 Essential Programming Concepts</h1>
        <aside class="notes">
            Intro!
        </aside>
    </section>

    <section data-background="#fff">
        
        <img src="${resource(dir: 'images', file: 'js-frameworks.jpg')}" alt="JS Frameworks"/>

        <aside class="notes">
            First, though...
            There are Countless tools to help structure your front end code<br/>
            You wouldn't write your server side code in raw Groovy, would you?<br/>
        </aside>
    </section>

    <section data-background="#fff">
        <h2 class="inverse">Some are more rigid than others</h2>
        <img src="${resource(dir: 'images', file: 'js-order.jpg')}" alt="Order of Obfuscation"/>
        <aside class="notes">
            These are the 3 that I hear the most about <br/>
            In order of complexity and amount of freedom from you </br/>
            There's a Convention vs configuration argument to made<br/>
        </aside>
    </section>

    <section>
        <h3>These frameworks may <span class="focus-word">obfuscate</span> the following:</h3>
        <aside class="notes">
            hide or obfuscate; important to understand what they're doing so you can appreciate what they give you.
        </aside>
    </section>

    <section>
        <h2>1. Javascript is weird</h2>
        <img src="${resource(dir: 'images', file: 'wat_grande.jpg')}" alt="wat"/>
        <aside class="notes">
            First up, Javascript can be a bit... odd.<br/>
            Gary Bernhardt, CodeMash 2012,  called 'WAT'. quirks in the Ruby and Javascript languages<br/>
            few examples: new Array(16).join("grails"-1) + ", Batman!"
        </aside>
    </section>

    <section>
        <img src="${resource(dir:'images', file:'javascript-good-parts.jpg')}" alt="javascript, the good parts"/>
        <aside class="notes">
            It's the type of language where someone needed to write this book to make people feel better.<br/>
        </aside>
    </section>

    <section>
        <img src="${resource(dir:'images', file:'js-good-parts-comparison.jpg')}" alt="ugh"/>
        <aside class="notes">
            It's quite a subset, unfortunately.<br/>
            What I'm getting at is: Javascript will be probably be the weakest part of your app. I still love it, though. quirks and all<br/>
        </aside>
    </section>

    <section>
        <h2>2. Prototypes, not classes</h2>
        <h3>At least until ECMA 6</h3>
        <aside class="notes">
            Simulate single object inheritence via the prototype chain, but JS was designed to not have classes<br/>
            Attempts are still made to force classes into it (Backbone, ECMA 6)<br/>
            However, power in Javascript comes from composition<br/>
        </aside>
    </section>

    <section>
        <pre>
            <code data-trim class="javascript">
var Note = Backbone.Models.extend({})
//
//    VS.
//

// use Underscore.js's extend to compose the Backbone Events
var Note = {};
_.extend(Note, Backbone.Events);
// do more!
_.extend(Note, MyCustomObj);
            </code>
        </pre>
        <aside class="notes">
            For example, to get around Backbone forcing you to extend their models, you can do something like this<br/>
            Perhaps wrap this in a Factory pattern<br/>
        </aside>
    </section>

    <section>
        <h2>3. Events</h2>
        <h3><small>Async, event-driven or it's wrong</small></h3>
    </section>

    <section>
        <h2>Event Delegates vs attached listeners</h2>
        <aside class="notes">
            -Your site won't respond well if you have many event handlers
        </aside>
    </section>

    <section>
        <pre><code class="javascript">
$("table").on("click", "td", function() {
  $(this).toggleClass("chosen");
});
// remember to 'off' when all done!
        </code></pre>
    </section>

    <section>
        <h2>4. Reflow / Repaint</h2>
        <h3><small>We're all making video games now</small></h3>
    </section>

    <section>
        
        <h2> Reflow: Changes involving structure, layout, height, etc.</h2>
        <h2> Repaint:  Changes involving visibility / visuals</h2>
        <aside class="notes">
            Repaint is expensive: Browser must recalculate visiblity of all nodes
            Reflow is even MORE expensive: dealing with structure of site
        </aside>

    </section>

    <section>
        <h2> &lt; 16ms</h2>
        <a href="http://letsfreecongress.org/" target="_blank">Open Me in Canary</a>
        <aside class="notes">
            Show the "let's free congress" site, show frames and show rendering shoot above 30 frames
        </aside>
    </section>

    <section>
        <h2>5. Templates</h2>
    </section>

    <section>
        <pre>
            <code data-trim class="javascript">
var source = "<h2>Hello, {{name}}!</h2><h3>Hopefully, you are " +
    "<span class='focus-word'>{{mood}}</span> this.</h3>";

var template = Handlebars.compile(source); // this step can be done well before hand

someHttpPromise.then(function(apiData){
    //sample data: "{'name': 'gr8conf', 'mood': 'enjoying'}"
    var markup = template(apiData);
    //insert template-generated markup somewhere
    $("section.present").append(markup);    
});,
 
            </code>
        </pre>
    </section>

    <section>
        <h2>Hello, gr8conf</h2>
        <h3>Hopefully, you are <span class="focus-word">enjoying</span> this.</h3>
    </section>

    <section><h2>Warning: Template Compliation time, and ...</h2></section>

    <section>
        <h2>6. Dom Injection</h2>
        <aside class="notes">
            Connects back to reflow / repaint<br/>
        </aside>
    </section>

    <section>
        <pre>
            <code >
                var $content = $("#content"),
                    data = ["item1", "item2", "item3"],
                    pos = data.length;
                //
                // Not Great
                //
                while(pos--) {
                    $content.prepend(data[pos]);
                }
            </code>
        </pre>
    </section>

    <section>
        <pre>
            <code>
                var $content = $("#content"),
                    $sibling = $content.prev(),
                    data = ["item1", "item2", "item3"],
                    pos = data.length;
                //
                // better
                //
                $content.remove();
                while(pos--) {
                    $content.prepend(data[pos]);
                }
                $content.insertAfter($sibling);
            </code>
        </pre>
    </section>

    <section>
        <h2>7. Views / Dom element encapsulation</h2>
    </section>

    
    <section>
        <img src="${resource( dir: 'images', file: 'dom_encapsulation.jpg')}" alt="Dom encapsulation">
    </section>

    <section>
        <h2>8. Routes and modules</h2>
        <aside class="notes">
            This section started to get very large as I was putting these slides together. You'll see why<br/>
            Had to scale back
        </aside>
    </section>

    <section>
        <h2>Javascript was designed to not care about memory usage</h2>
        <h3>But <span class="focus-word">you</span> need to</h3>
        <aside class="notes">
            Designers didn't want you to worry about it<br/>
            Memory will likely be your bottleneck, *especially* for mobile!<br/>
        </aside>
    </section>

    <section>
        <a href="http://sealedabstract.com/rants/why-mobile-web-apps-are-slow/" target="_blank"><img src="${resource(dir: 'images', file: 'immature-garbage-man.jpg')}" alt="Garbage Collector"></a>
        <aside class="notes">
            JS does not have a mature memory management scheme or GC<br/>
            Cannot force the garbage collector to work, can only get things ready for it.<br/>
            USE DELETE often<br/>
            Image is a link to a Great article on why mobile apps tend to be slow. Highlights MEMORY<br/>
        </aside>

    </section>

    <section>
        <img src="${resource(dir: 'images', file: 'js-transfer-size.jpg')}" alt="HTTP Archive: JS sizes of top 100 sites"/>
        <h3><small><a href="http://httparchive.org/">HTTP Archive:</a> Top 100 sites, first visit</small></h3>
        <aside class="notes">
            Problem steadily getting worse<br/>
            HTTP Archive, top 100 sites, number of JS downloads plus KB<br/>
            Numbers reflect initial visit of the url, not browsing around<br/>
        </aside>
    </section>

    <section>
        <h2>Break up your App into modules</h2>
        <aside class="notes">
            The Resources Plugin is great for this; it will concat and minify your resources for you<br/>
        </aside>
    </section>

    <section>
        
        <h2>Load / Unload modules based on current Route</h2>
        <aside class="notes">
            
            define some sort of base module which contains rudiments of your app and knows to load or unload modules based on route<br/>
            <br/>Creating a Multi, single page app!<br/>

        </aside>
    </section>

    <section>
        <img src="${resource(dir:'images', file:'chrome-heap-tool.jpg')}" alt="Chrome dev tools heap"/>
        <aside class="notes">
            This bad boy should be your best friend.
        </aside>
    </section>

    <section>
        <h2>9. Minimum Viable View</h2>
        <h3><small>Avoid &lt;body&gt;&lt;/body&gt;</small></h3>
        <aside class="notes">
            Still need to send something initially to the browser<br/>
        </aside>
    </section>

    <section data-background="#fff">
        <img src="http://localhost:8080${resource(dir: 'images', file: 'twitter-logo.jpg')}"/>
        <aside class="notes">
            Tell Twitter Story <br/>
            I feel like the answer is somewhere in between<br/>
        </aside>
    </section>

    <section data-markdown>
        ## send useful HTML on initial Request
        ## Avoid multiple requests per user action
    </section>

    <section>
        <img src="${resource(dir:'images', file:'stephen-colbert-wipes-sweat.jpg')}" alt="Phew"/>
        <aside class="notes">
            That was quite a bit, I know<br/><br/>
            No chance to talk about build process, deployment, performance, testing<br/> WOULD LOVE TO TALK ABOUT THEM LATER!<br/>
        </aside>
    </section>

    <section data-transition="fade">
        <h1>What about Robots / Spiders?</h1>
        <h3>Oh No, My SEO!</h3>

        <aside class="notes">
            Common question<br/>
        </aside>
    </section>

    <section>
        <h3>Like us, our users place a lot of value in speed — that's why we've decided to take site speed into account in our search rankings</h3>
        <h3><a href="http://googlewebmastercentral.blogspot.com/2010/04/using-site-speed-in-web-search-ranking.html">-Google</a></h3>
    </section>

    <section data-markdown>
        ## The future of Application Development will be exciting!
    </section>

    <section <section data-background="http://localhost:8080${resource(dir: 'images', file: 'js-logo.png')}"
             data-background-size="55%">
        <aside class="notes">
            ... and there's going to be a lot of Javascript in it
        </aside>
    </section>

    <section>
        <h1>Thank You!</h1>
    </section>

    <section>
        <h3>Image credits</h3>
        <small>WAT: <a href="http://www.shopify.com/technology/5370262-wat-a-funny-look-at-ruby-and-javascript-oddities">http://www.shopify.com/technology/5370262-wat-a-funny-look-at-ruby-and-javascript-oddities</a></small>
        <small>KING JS: <a href="http://www.hutchhouse.com/blog/who-needs-flash-javascript-is-king/">http://www.hutchhouse.com/blog/who-needs-flash-javascript-is-king/</a></small>
        <small>1000ms TTG: <a href="http://www.igvita.com/slides/2013/fluent-perfcourse.pdf">http://www.igvita.com/slides/2013/fluent-perfcourse.pdf</a></small>
        <small>Phone and Tower: <a href="http://www.pcmag.com/article2/0,2817,2405596,00.asp" target="_blank">http://www.pcmag.com/article2/0,2817,2405596,00.asp</a></small>
        <small>Balancing Act: <a href="http://www.govloop.com/profiles/blogs/next-four-years-managing-a-balancing-act" target="_blank">http://www.govloop.com/profiles/blogs/next-four-years-managing-a-balancing-act</a></small>
        <small>Yin / Yang: <a target="_blank" href="http://bodydivineyoga.files.wordpress.com/">http://bodydivineyoga.files.wordpress.com/</a></small>
        <small>JS, good parts: <a href="http://oreilly.com/" target="_blank">http://oreilly.com/</a></small>
        <small>Rage/Disapproval Face: <a href="http://knowyourmeme.com/" target="_blank">http://knowyourmeme.com/</a></small>
        <small>Colbert Sweat Wipe: <a href="http://www.nofactzone.net/" target="_blank">http://www.nofactzone.net/</a></small>
        <small>Plugin Icon: <a href="http://iconify.it/" target="_blank">http://iconify.it/</a></small>
        <small>Scroll: <a href="http://www.roblox.com/" target="_blank">http://www.roblox.com/</a></small>
    </section>
</body>
</html>