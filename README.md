# MyJdRb
This is an unofficial ruby client for the [My.JDownloader API Documentation](https://my.jdownloader.org/developers/) which enables management of [JDownloader 2 (jdownloader.org)](http://jdownloader.org/) instances.

## Description
The gem takes care of authentication and encryption to provide convenient usage of the My.JDownloader API. It uses [REST Client (github.com)](https://github.com/rest-client/rest-client) to make required HTTP calls.

Below are some usage examples. For a complete feature set take a look at the [My.JDownloader API Documentation](https://my.jdownloader.org/developers/)

## Example Usage
Enter your credentials and establish a session to My.JDownloader:
```rb
require 'myjdrb'

user = 'foo'
pass = 'bar'

api = Myjdrb::Api.new(user: user, password: pass)
```

Receive a list of currently connected JDownloader instances:
```rb
devices = api.devices

dev = devices.first
dev.name
=> "user@MyDevice"
```

### Configuration usage
It is possible to retrieve and set configurations for a running instance:

```rb
config = dev.config
```

See the current setting for maximum simultane downloads:
```rb
config.get(interfaceName: "org.jdownloader.settings.GeneralSettings", key: "MaxSimultaneDownloads", storage: "null")
=> 3
```

Modify the setting:
```rb
new_value = 2
config.set(interfaceName: "org.jdownloader.settings.GeneralSettings", key: "MaxSimultaneDownloads", storage: "null", value: new_value)
=> true
```

To see what options are available, you can retrieve the full list: (*Note*: The list is VERY long)
```rb
config.list
```

Narrow down configuration options to YouTube related options:
```rb
config.list(pattern: %r{org\.jdownloader\.plugins\.components\.youtube.*}.to_s, returnDescription: true, returnValues: true, returnDefaultValues: true, returnEnumInfo: true)
```

### LinkGrabberV2 usage
The LinkGrabberV2 endpoint can be used to add and manage download resources.
Links represent download resources like Videos or Files. They are grouped in packages.

#### Crawling links for resources
Its possible to crawl webpages for downloadable resources and group them into a package.

To add links, construct a `Myjdrb::Struct::AddLinksQuery` and add links to it.
```rb
struct = Myjdrb::Struct::AddLinksQuery.new
struct.packageName = "MyNewPackage"
struct.links = "http://foo.local/webpage_with_content"
# or for multiple
struct.links = "http://link1, http://link2"

dev.linkgrabberv2.addLinks(query: struct)
=> {:id=>1337} # Returns an event id
```

or:

`Myjdrb::Struct::AddLinksQuery` has more configuration options like `#autoExtract (Boolean)`, `#downloadPassword (String)` and so on.

#### Listing packages
Receiving informations about current packages:

```rb
struct = Myjdrb::Struct::CrawledPackageQuery.new
packages = dev.linkgrabberv2.queryPackages(queryParams: struct)

# Returns array of packages
=>[{:saveTo=>"/whatever/bar", :hosts=>["foo.local"], :name=>"MyNewPackage", :childCount=>2, :uuid=>1337},
   ...]

event_uuid = packages.first.fetch(:uuid)
```

<!--See [`Myjdrb::Structs::PackageQueryStorable`](lib/myjdrb/structs/package_query_storable.rb) for query options.-->

#### Querying links
Receiving all links:

```rb
struct = Myjdrb::Struct::CrawledLinkQuery.new
dev.linkgrabberv2.queryLinks(queryParams: struct)
=>
[
{:name=>"myfile", :packageUUID=>7899, :uuid=>12345},
{:name=>"another", :packageUUID=>7899, :uuid=>54321},
{:name=>"yet_another_file", :packageUUID=>another_package_uuid, :uuid=>98412},
...
]
```

Filter by package uuid:
```rb
struct = Myjdrb::Struct::CrawledLinkQuery.new(packageUUIDs: [7899])
dev.linkgrabberv2.queryLinks(queryParams: struct)
=>
[
{:name=>"myfile", :packageUUID=>7899, :uuid=>12345},
{:name=>"another", :packageUUID=>7899, :uuid=>54321}
]
```

### Other Endpoints
Besides the options mentioned above, the API offers more Endpoints. Again, consult the [My.JDownloader API Documentation](https://my.jdownloader.org/developers/) to see whats possible.

For example, the uptime of a running instance:
```rb
dev.jd.uptime
=> 6988037 (mmss..)
```

Or restart of an instance:
```rb
dev.system.restartJD
```

Or shutdown of the entire OS..
```rb
dev.system.shutdownOS
```

### Error handling
If you use one of the methods incorrectly, an `ArgumentError` will be raised and provide info abour correct calls.
```rb
dev.config.list(wrong_parameter: 12)

=> ArgumentError: Given parameters are invalid.
Given parameters: {:wrong_parameter=>12},
Required (one of the following):
[
{},

{:pattern=>{:type=>String},
:returnDescription=>{:type=>TrueClass},
:returnValues=>{:type=>TrueClass},
:returnDefaultValues=>{:type=>TrueClass},
:returnEnumInfo=>{:type=>TrueClass}},

{:pattern=>{:type=>String},
:returnDescription=>{:type=>TrueClass},
:returnValues=>{:type=>TrueClass},
:returnDefaultValues=>{:type=>TrueClass}}
]
```
In this case, three variants are possible. No arguments (indicated by `{}`) or two variants, on of them looking like this:
```rb
dev.config.list(pattern: %r{.*}.to_s, returnDescription: true, returnValues: true, returnDefaultValues: true, returnEnumInfo: true)
```


If correct parameters are provided but the contents are wrong, things can get tricky.

```rb
config.get(interfaceName: "org.jdownloader.settings.GeneralSettings", key: "MaxSimultaneDownloads", storage: "")
=> ClassyHash::SchemaViolationError: :data is not present
```
In this case, storage has wrongly been initialized with an empty String but it cant be omited that way and must be "null"

```rb
config.get(interfaceName: "org.jdownloader.settings.GeneralSettings", key: "MaxSimultaneDownloads", storage: "null")
=> 2
```
There are quite some of these quirks in the API and its hard to check these errors on the client side. To make things even worse, its nowhere documented (besides the in the sourcecode) that in this case, storage must be set to "null".

### API inconsistency
Don't blame this client for the various inconsistencies of the API.
Like arguments sometimes taking arrays and sometimes comma-separated strings. Or query parameter sometimes being named `query` on one call but `queryParams` on another call.

Overall, the API is designed badly and, contrary to the documentations claim, everything but 'REST based'. This client is a direct mapping of the API and therefore carries all the bad designs along.

## Similar Projects
There are other client librabries in other languages available.

* [My.Jdownloader-API-Python-Library (github.com)](https://github.com/mmarquezs/My.Jdownloader-API-Python-Library)
* [my.jdownloader.org-api-php-class (github.com)](https://github.com/tofika/my.jdownloader.org-api-php-class)
* [Node Jdownloader API (github.com)](https://github.com/malleguisse/node-jdownloader-api)

## License
This library is licensed under the MIT License.
