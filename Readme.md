# MyJdRb
This is an unofficial ruby client for the [My.JDownloader API (docs.google.com)](https://docs.google.com/document/d/1IGeAwg8bQyaCTeTl_WyjLyBPh4NBOayO0_MAmvP5Mu4/) which enables management of [JDownloader 2 (jdownloader.org)](http://jdownloader.org/) instances.

## Description
The gem takes care of authentication and encryption to provide convenient usage of the My.JDownloader API. It uses [REST Client (github.com)](https://github.com/rest-client/rest-client) to make required HTTP calls.

Below are some usage examples. For a complete feature set take a look at the [My.JDownloader API Documentation (docs.google.com)](https://docs.google.com/document/d/1IGeAwg8bQyaCTeTl_WyjLyBPh4NBOayO0_MAmvP5Mu4/)


## Example Usage
Enter your credentials and establish a session to My.JDownloader:
```rb
user = 'foo'
pass = 'bar'

api = Myjdrb::Api.new(user: user, password: pass)
```

Receive a list of currently connected JDownloader instances:
```rb
devices = api.devices

dev = devices.first
dev.name
=> "Your configured instance Name in Jdownloader"
```
###

### Configuration usage
It is possible to retrieve and set configurations for a running instance:

```rb
config = dev.config
```

See the current setting for maximum simultane downloads:
```rb
config.get(interface: "org.jdownloader.settings.GeneralSettings", key: "MaxSimultaneDownloads")
=> 3
```

Modify the setting:
```rb
new_value = 2
config.set(interface_name: "org.jdownloader.settings.GeneralSettings", key: "MaxSimultaneDownloads", value: new_value)
=> true
```

To see what options are available, you can retrieve the full list: (*Note*: The list is VERY long)
```rb
config.list
```

Narrow down configuration options to YouTube related options:
```rb
config.list(pattern: %r{org\.jdownloader\.plugins\.components\.youtube.*})
```

### LinkGrabberV2 usage
The LinkGrabberV2 endpoint can be used to add and manage download resources.
Links represent download resources like Videos or Files. They are grouped in packages.

#### Adding a Package with Links
A new Package with links can be added in the following ways:
To add links, construct a `Myjdrb::Structs::AddLinksQueryStorable` and add links to it.
```rb
struct = Myjdrb::Structs::AddLinksQueryStorable.new

struct.packageName = "MyNewPackage"

struct.add_link("http://foo.local/myfile")
struct.add_link("http://bar.local/another")

dev.linkgrabberv2.addLinks(struct.to_json)
=> {:id=>1337} # Returns a PackageUUID
```

or:
```rb
struct.add_link(["http://foo.local/myfile","http://bar.local/another"])
```

or:
```rb
Myjdrb::Structs::AddLinksQueryStorable.new(links:"link1,link2,link3")
```

`Myjdrb::Structs::AddLinksQueryStorable` has more configuration options like `#autoExtract (Boolean)`, `#downloadPassword (String)` and so on.
See [`Myjdrb::Structs::AddLinksQueryStorable`](lib/myjdrb/structs/add_links_query_storable.rb) for query options.

#### Querying packages
Receiving informations about current listed packages:

```rb
query = Myjdrb::Structs::PackageQueryStorable.new
packages = dev.linkgrabberv2.queryPackages(query.to_json)

# Returns array of packages
=>[{:saveTo=>"/whatever/bar", :hosts=>["foo.local"], :name=>"MyNewPackage", :childCount=>2, :uuid=>1337},
   ...]

package_uuid = packages.first.fetch(:uuid)
```

See [`Myjdrb::Structs::PackageQueryStorable`](lib/myjdrb/structs/package_query_storable.rb) for query options.

#### Querying links
Receiving all links:

```rb
query = Myjdrb::Structs::LinkQueryStorable.new
dev.linkgrabberv2.queryLinks(query.to_json)
=>
[
{:name=>"myfile", :packageUUID=>1337, :uuid=>12345},
{:name=>"another", :packageUUID=>1337, :uuid=>54321},
{:name=>"yet_another_file", :packageUUID=>another_package_uuid, :uuid=>98412},
...
]
```

Filter by package uuid:
```rb
query = Myjdrb::Structs::LinkQueryStorable.new(packageUUIDs: [1337])
dev.linkgrabberv2.queryLinks(query.to_json)
=>
[
{:name=>"myfile", :packageUUID=>1337, :uuid=>12345},
{:name=>"another", :packageUUID=>1337, :uuid=>54321}
]
```

See [`Myjdrb::Structs::LinkQueryStorable`](lib/myjdrb/structs/link_query_storable.rb) for query options.


### Other Endpoints
Besides the options mentioned above, the API offers more Endpoints. Again, consult the [My.JDownloader API Documentation (docs.google.com)](https://docs.google.com/document/d/1IGeAwg8bQyaCTeTl_WyjLyBPh4NBOayO0_MAmvP5Mu4/) to see whats possible.

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
A `Myjdrb::ResponseError` will be thrown if something goes wrong.

For example if an invalid endpoint is used:
```rb
begin
	config = dev.config

	config.iDontExist
rescue Myjdrb::ResponseError => e
	e
	=> #<Myjdrb::ResponseError: 404 Not Found : {"type"=>"API_COMMAND_NOT_FOUND", "data"=>nil, "src"=>"DEVICE"}>

	e.request
	=> #<Myjdrb::Requests::Post:0x000055cb2c4eac30 @action="/config/iDontExist", @api_version=1, @parameter=[], @query_parameter={}, @rid=1337>

	e.uri
	=> #<URI::HTTPS https://api.jdownloader.org/t_sessiontoken_deviceid/config/iDontExist>
end
```

Wrong parameter submitted:
```rb
dev.linkgrabberv2.addLinks("weird parameter")
 => Myjdrb::ResponseError: 400 Bad Request : {"type"=>"BAD_PARAMETERS", "data"=>"weird parameter", "src"=>"DEVICE"}
```

## Similar Projects
There are other client librabries in other languages available.
[My.Jdownloader-API-Python-Library (github.com)](https://github.com/mmarquezs/My.Jdownloader-API-Python-Library)
[my.jdownloader.org-api-php-class (github.com)](https://github.com/tofika/my.jdownloader.org-api-php-class)
[Node Jdownloader API (github.com)](https://github.com/malleguisse/node-jdownloader-api)

## License
This library is licensed under the MIT License.
