<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="reveal"/>
    <title></title>
</head>
<body>

    <section data-transition="fade">
        <h1>Fundamentals of Responsive Javascript Single Page Web Applications</h1>
        <p>
            <small>Steve Pember / <a href="http://twitter.com/svpember">@svpember</a></small>
        </p>
    </section>

    <section>
        <h3>TODO: img of web development</h3>
        <aside class="notes">
        Let's talk about web development.
        </aside>
    </section>

    <section>
        <h2>A Web Application's Goal is an Engaging User Experience</h2>
    </section>

    <section>
        <img src="${resource(dir: 'images', file: 'js-king.jpg')}" alt="JS is the King">
        <aside class="notes">
            JS is by far the better system for building more engaging experiences<br/>
            - it is EATING the rest of the world. Flash, Flex, and it's ilk - things we used to use a couple years ago - have been marginalized by this quirky little language.<br/>
        </aside>
    </section>

    <section>
        <h2>What makes an Engaging Experience?</h2>
        <ul>
            <li>Content</li>
            <li>Design</li>
            <li class="fragment grow">Performance</li>
        </ul>

        <aside class="notes">
            I'm assuming everyone's primary occupation is that of a developer or engineer. Does anyone here primarily design things for work?<br/>
            IF SO: I hope you're not a pixel-perfectionist. Assume that your design will flow
        </aside>
    </section>

    <section id="ttg">
        <img src="${resource(dir: 'images', file: '1000_ttg.jpg')}" alt="Time to Glass: 1000ms"/>
        <aside class="notes">
            Has anyone heard of the 1000ms Time to Glass challenge?<br/>
            Deals with a study done that shows users give up on your application if nothing appears after 1s <br/>
            App Performance is a multi day lecture, and I'm happy to discuss outside of this.<br/>
            Several factors, Much of this latency is out of your control, especially on mobile. <br/>
            Control what you can -> switch
        </aside>
    </section>

    <section>
        <h1>Control What you Can</h1>
    </section>

    <section>
        <h2>Triggering a full page refresh is <span class="focus-word">horrible</span> UX</h2>
        <aside class="notes">
            Triggering a full page refresh is one of the slowest things you can do for a user experience<br/>
        </aside>
    </section>

    <section>
        <img src="${resource(dir: 'images', file: 'blank_screen.png')}" alt="Blank screens are bad"/>
        <aside class="notes">
            You never want to have your users see this, or somewhat worse: <br/>
            Site they were just on, clicked a link, and wait for a bit before the screen changes<br/>
        </aside>
    </section>

    <section>
        <img src="${resource(dir: 'images', file: 'multiple_devices.jpg')}" alt="Multiple Devices"/>
        <aside class="notes">
            Furthermore, triggering a full refresh can send large amounts of data to your users, unless your cache and expire headers are top notch, which mitigates it<br/>
            Respect your mobile users, slow connection speeds and data caps<br/>

            Phones computational speed is outpacing their connection speeds<br/>
        </aside>
    </section>

    <section>
        <h2>Goal: Update Page content based on user input</h2>
        <h3 class="fragment fade-in">Could we just use a sprinkling of AJAX / PJAX?</h3>
        <aside class="notes">
            So how do we add an engaging user experience while minimizing data transfers?<br/>
        </aside>
    </section>

    <section><img src="${resource(dir: 'images', file: 'disapproval.jpg')}" alt="I disapprove"></section>

    <section>
        <h2>You should spend at least as much engineering on your Front End as your Back End</h2>
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

    <section data-transition="fade">
        <h1>Single Page Apps are the future</h1>
         <h2>If you're not doing it, you <span class="focus-word">will</span> be left behind</h2>
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
            He was calling out how Grails will need to change in 3.0 to adapt to the future

        </aside>
    </section>

    <section data-transition="fade">
        <h1>SPA Fundamentals</h1>
        <aside class="notes">
            Hopefully by now your interest is at least vaguely piqued<br/>
            Let's talk about the Fundamentals for building one of these things... 
            
        </aside>
    </section>

    <section>
        <h1>?</h1>
        <img src="${resource(dir:'images', file: 'grails-icon.png')}" alt="Grails">
        <aside class="notes">and why Grails is a great fit, and will continue to be a great fit as we transition to 3.0<br/></aside>
    </section>

    <section>
        <h2>TODO: GORM image, plugins site with arrow pointing to count</h2>
        <aside class="notes">
            Incredibly strong on the server side, which is exactly what we need for this sort of thing<br/>
            Aside from the usual reasons, I highlight Security, Persistence, Plugins<br/>
            I mention Security separately because Spring Security is just so Excellent.<br/>
            Combine this with some of the features coming in 2.3 and 3.0, and perhaps an option to drop the servlet context if not necessary. Will hopefully allow Grails<br/>
        </aside>
    </section>

    <section data-transition="fade">
        <h1>Responsive Applications</h1>
    </section>

    <section>
        <h2>Responsive Design</h2>
        <ul>
            <li>Flexible Grids</li>
            <li>Flexible Images</li>
            <li>Media Queries</li>            
            <li class="fragment fade-in">Responsive Architecture</li>
            <li class="fragment fade-in">Responsive Responses</li>
        </ul>
    </section>

    <section>
        <h2>Dynamically load / unload Interactive features based on device capabilities</h2>
    </section>

    <section>
        <h2>... AKA Progressive Enhancement</h2>
        <aside class="notes">
            Another term for this philosophy is "Progressive enhancement"<br/>
            Although we're focused on the JS end<br/>
        </aside>
    </section>

    <section>
        <img src="${resource(dir:'images', file: 'yin_yang3.gif')}" alt="Yin and Yang"/>
        <aside class="notes">
            A quick aside <br/>
            I feel like RD and PE are like the Yin and Yang of web dev<br/>
            Difficult to mention one without the other<br/>
            As an aside, there's been some discussion the past month about JS, having too much of it, and PE. Be happy to talk afterwords<br/>
        </aside>
    </section>

    <section>
        <h2>TIP: Use Modernizr to responsively adjust JS capabilities</h2>
        <pre>
            <code data-trim>
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

    <section data-transition="fade">
        <h1>API Design</h1>
    </section>

    <section data-markdown>
        ## The Client should only ask for what it needs based on device capabilities
        ### (start small and build up)
    </section>

    <section data-markdown>
        ## AKA Progressive API Enhancement
    </section>

    <section data-markdown>
        ## TODO: EXAMPLE!
    </section>


    <section data-markdown>
        ## Bandwidth vs Latency
        #### (more data vs more requests)
    </section>

    <section>
        <img src="${resource(dir: 'images', file: 'cell_phone_tower.jpg')}" alt="cell phone network have high latency" />
        <h3>Expect 100-1000ms latency</h3>
        <aside class="notes">Note that this is especially true for Mobile users. Expect an additional overhead of 100 to 1000ms PER OBJECT REQUEST on a mobile phone</aside>
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
        <h2>Grails 2.3+: TODO: REST API?</h2>
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
    
    <section data-transition="fade">
        <h1>9 Essential Programming Concepts</h1>
        <aside class="notes">
            Intro!
        </aside>
    </section>

    <section>
        <h2>It's dangerous to go alone!</h2>
        <img src="${resource(dir: 'images', file: 'js-frameworks.jpg')}" alt="JS Frameworks"/>

        <aside class="notes">
            Countless tools to help structure your front end code<br/>
            You wouldn't write your server side code in raw Groovy, would you?<br/>
        </aside>
    </section>

    <section>
        <h2>Some are more rigid than others</h2>
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
        <h2>2. Prototypes, not classes</h2>
        <h3>At least until ECMA 6</h3>
        <aside class="notes">
            Simulate single object inheritence via the prototype chain, but JS was designed to not have classes<br/>
            Attempts are still made to force classes into it (Backbone, ECMA 6)<br/>
            However, power in Javascript comes from composition<br/>
        </aside>
    </section>

    <section>
        <h2>TODO: code snippet showing composition</h2>
    </section>

    <section>
        <pre>
            <code data-trim>
var Note = Backbone.Models.extend({})
//
//    VS.
//

// use Underscore.js's extend to compose the Backbone Events
var Note = {};
_.extend(Note, Backbone.Events);
            </code>
        </pre>
        <aside class="notes">
            For example, to get around Backbone forcing you to extend their models, you can do something like this<br/>
        </aside>
    </section>

    <section>
        <h2>3. Events</h2>
        <h3><small>Async, event-driven or it's wrong</small></h3>
    </section>

    <section data-markdown>
        ##Event Delegates vs attached listeners
    </section>

    <section data-markdown>
        ## TODO: delegate example
    </section>

    <section>
        <h2>4. Reflow / Repaint</h2>
        <h3><small>We're all making video games now</small></h3>
    </section>

    <section>
        <h2> Reflow:  TODO</h2>
        <h2> Repaint: </h2>
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
        <h2>TODO: Template example</h2>
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
            <code>
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
        <h2>8. Routes and modules</h2>
        <aside class="notes">
            This section started to get very large as I was putting these slides together. You'll see why<br/>
            Had to scale back
        </aside>
    </section>

    <section>
        <img src="${resource(dir: 'images', file: 'js-transfer-size.jpg')}" alt="HTTP Archive: JS sizes of top 100 sites"/>
        <p>HTTP Archive: Top 100 sites, first visit</p>
        <aside class="notes">
            HTTP Archive, top 100 sites, number of JS downloads plus KB<br/>
            Numbers reflect initial visit of the url, not browsing around<br/>
        </aside>
    </section>

    <section>
        <h2>Urls Matter</h2>
        <aside class="notes">
            Veins of your app<br/>Urls are forever<br/>
        </aside>
    </section>

    <section>
        <h2>9. Minimum Viable View</h2>
        <h3><small>Avoid &lt;body&gt;&lt;/body&gt;</small></h3>
    </section>

    <section>
        <img src="" alt="Twitter Logo"/>
        <aside class="notes">
            Tell Twitter Story <br/>
            I feel like the answer is somewhere in between<br/>
        </aside>
    </section>

    <section data-markdown>
        ## send useful HTML on initial Request
        ## Avoid multiple requests per user action
    </section>

    <section><h2>TODO: Phew image</h2></section>

    <section data-transition="fade">
        <h1>What about Robots / Spiders?</h1>
        <h3>Oh No, My SEO!</h3>

        <aside class="notes">
            Common question<br/>
        </aside>
    </section>

    <section>
        <h2>Todo: Slide discussing page speed affecting google rankings</h2>
    </section>

    <section data-markdown>
        ## The future will be exciting!
    </section>

    <section>
        <img src="${resource(dir: 'images', file: 'js-logo.png')}" alt="js logo"/>
        <aside class="notes">
            ... and there's going to be a lot of Javascript in it
        </aside>
    </section>

    <section>
        <h1>Thank You!</h1>
        <h3>Questions?</h3>
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
        <small>Rage/Disapproval Face<a href="http://knowyourmeme.com/" target="_blank">http://knowyourmeme.com/</a></small>
    </section>
</body>
</html>