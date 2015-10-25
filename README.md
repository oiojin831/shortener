# Link Shortener
[Link to the app](http://ls-shortener-staging.herokuapp.com)


## Todo
- [x] Original URL -> short URL
  - [x] Validate original URL
- [x] 6 digits -> mixed with 0..9, a..z, A..Z
  - [x] Use Base62
- [x] Click short URL -> redirect to Original URL
- [ ] Get as many info as possible when visitor accesses to Short URL
  - [ ] Get IP
  - [ ] Get referer
  - [ ] Get number of visited Short URL
- [ ] Several ways to improve performance
  - [ ] Generate Short URL with Hash Table??
  - [x] Improve DB search with primary key
  - [ ] Load balancing
  - [ ] Cache
    - [ ] Rails basic Cache
    - [ ] Redis
  - [ ] RDBMS -> NoSql
    - [ ] MongoDB
- [ ] Analysis
  - [ ] ab


## Roadmap

Basic functions with RDBMS -> DB Caches -> response caches(page cache) -> NoSql -> Redis?
