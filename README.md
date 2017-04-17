# GoLinks
Link shortening and click tracking plugin for Camaleon CMS.

**Manage links**

![GoLinks Manage Links](https://raw.githubusercontent.com/ryanckulp/go_links/master/test/dummy/public/camaleon-go-links-manage-links.png)

**Create links**

![GoLinks Create Link](https://raw.githubusercontent.com/ryanckulp/go_links/master/test/dummy/public/camaleon-go-links-create-link.png)

**Features**

GoLinks turns long URLs into branded, "/go/some-slug" destinations, which increases click-through engagements and is great for managing messy affiliate links.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'go_links'
```

Then execute:
```bash
$ bundle
```

Or install it yourself:
```bash
$ gem install go_links
```

## Usage

1. Install the gem
2. `$ rake go_links:install` then `$ rake db:migrate`
3. Activate plugin from your site's `/admin/plugins/` 'Disabled' tab
4. Click 'settings' from Active tab to view and configure links

## To do

* Ability to Edit/Update a link destination
* Ability to delete a link
* Sorting by most/least in Index view

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
