# Website The Game of Life

This new version of the Game of Life website is built using "elmstatic". Elmstatic is a static site generator: it takes a folder of text (markdown) and turns them into static HTML website. It is inspired by Jekyll. 

You can customize elmstatic's layout etc.. through Elm, but you don't need to understand Elm to write content, the content is written as simple text files. 

The advantage is: no database is required, so it can be completely managed through github, and the output (plain HTML) is simple enough that I can change it without too much suffering. Static HTML is also good for search engines and accessibility.

To add content you need to install the following:

- [elm](https://guide.elm-lang.org/install/elm.html) (direct installer)
- [elmstatic](https://korban.net/elm/elmstatic/) (via NPM)

For previewing, you may like to have:

- [http-server](https://www.npmjs.com/package/http-server) (via NPM)

You can add posts in the _posts folder, which will be displayed in "News" and
homepage. Concerts should be added within the _posts/concerts folder, so they
end up on "www.gameoflife.nl/concerts".

Media can be embedded in the markdown with:
![name of the media](/img/filename.jpg)


If you want to update a lot of stuff, it is nice to run elmstatic in __watch__ mode, which will automatically rebuild the website whenever you change/add a file:
[browser-sync](https://www.npmjs.com/package/browser-sync)

# TODO:

- add more info about the software
- a full list of composers and pieces
- posts on using WFSCollider and debugging problems.

