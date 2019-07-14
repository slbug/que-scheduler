## 3.2.4 (2019-07-14)

- Add re-enqueue checks [#76](https://github.com/hlascelles/que-scheduler/pull/76)
- Introduction of initial que 1.0 handling code [#95](https://github.com/hlascelles/que-scheduler/pull/95)
- Add tests for Que 0.14 [#96](https://github.com/hlascelles/que-scheduler/pull/96)

## 3.2.3 (2019-03-06)

- Namespace support modules [#54](https://github.com/hlascelles/que-scheduler/pull/54)
- Add Ruby 2.6 tests [#58](https://github.com/hlascelles/que-scheduler/pull/58)
- Remove Ruby 2.2 tests [#58](https://github.com/hlascelles/que-scheduler/pull/58)
- Bump rubocop from 0.62.0 to 0.63.0 [#63](https://github.com/hlascelles/que-scheduler/pull/63)
- Update Fugit to 1.1.8 [#62](https://github.com/hlascelles/que-scheduler/pull/62)
- Switch from Travis to Gitlab [#64](https://github.com/hlascelles/que-scheduler/pull/64)

## 3.2.2 (2018-08-01)

[Commits](https://github.com/hlascelles/que-scheduler/compare/v3.2.1...v3.2.2)

- Add direct access to the schedule for spec tests. [#40](https://github.com/hlascelles/que-scheduler/pull/40)
- Do nothing if `migrate!` is called on a test database. [#39](https://github.com/hlascelles/que-scheduler/pull/39)

## 3.2.1 (2018-07-01)

[Commits](https://github.com/hlascelles/que-scheduler/compare/v3.1.1...v3.2.1)

- Add support for ruby 2.5
- Drop support for ruby 2.1 and rails 3.x
- Improve DB migration state detection and error reporting

## 3.1.1 (2018-06-05)

[Commits](https://github.com/hlascelles/que-scheduler/compare/v3.1.0...v3.1.1)

* Remove railtie [#30](https://github.com/hlascelles/que-scheduler/pull/30)

## 3.1.0 (2018-06-01)

[Commits](https://github.com/hlascelles/que-scheduler/compare/v3.0.0...v3.1.0)

* Addition of a gem config initializer [#29](https://github.com/hlascelles/que-scheduler/pull/29)
* Allow configuration of the transaction block adapter [#29](https://github.com/hlascelles/que-scheduler/pull/29)
* Handling middle overriding enqueue that prevents a job from being enqueued [#28](https://github.com/hlascelles/que-scheduler/pull/28)

## 3.0.0 (2018-05-23)

[Commits](https://github.com/hlascelles/que-scheduler/compare/v2.1.2...v3.0.0)

* Use bigint for audit logs [#22](https://github.com/hlascelles/que-scheduler/pull/22)
* Store enqueued job_id in the audit table [#23](https://github.com/hlascelles/que-scheduler/pull/23)
* Store enqueued job run_at time in audit table
* Store actual DB priority value of enqueued job (ie, default priority value instead of NULL if none provided)
* Store actual DB queue value of enqueued job (ie, '' instead of NULL if none provided)

## 2.1.2 (2018-05-18)

* Remove use of ActiveRecord

## 2.1.1 (2018-05-18)

* Use more exact json cast when migrating
* Adding more code quality tools

## 2.1.0 (2018-05-02)

* Split the audit table into job execution event and multiple enqueued job rows

## 2.0.2 (2018-04-29)

* Moved pg gem to development dependencies

## 2.0.0 (2018-04-29)

* Added que_scheduler_audit table
* Added managed migrations
* Add gemspec metadata
* Code cleanup
* Major version change
* Use a real postgres DB in specs

## 1.2.0 (2018-03-29)

* Upgraded [fugit](https://github.com/floraison/fugit/issues/2) to allow timezones in cron lines 

## 1.1.0 (2018-03-24)

* Switched to use DB time to find "now" so as to match que queries
* Added more tests for various ways of supplying args

## 1.0.3 (2018-03-15)

* Enforced a minimum version of `et-orbi` to supply `#to_local_time` methods. Thanks to @jish.
* Clarified config syntax

## 1.0.2 (2018-01-15)

* Added ORM adapter layer to allow use of [Sequel](https://github.com/jeremyevans/sequel)

## 1.0.1 (2018-01-06)

* Refactoring and code cleanup

## 1.0.0 (2017-12-19)

* Remove legacy config keys

## 0.10.1 (2017-12-03)

* Added `schedule_type` config key

## 0.9.1 (2017-12-03)

* Added a `::Rails::Engine` to ensure the schedule config is validated at worker start time

## 0.8.1 (2017-11-18)

* Scheduler config check for valid `Que::Job` subclasses

## 0.8.0 (2017-11-11)

* Added multiple scheduler job detection
* Added more tests

## 0.7.0 (2017-11-05)

* Update dependencies
* Added more tests
* Add additional checks for worker clock skew

## 0.6.0 (2017-11-05)

* Formalised all internal args as Hashies
* Enforced correct yml values

## 0.5.0 (2017-11-05)

* Refactored to take a hash as SchedulerJob args
* Formalised `SchedulerJob` args as a `Hashie`
* Formalised using ISO8601 everywhere

## 0.4.0 (2017-10-27)

* Added CI Travis builds

## 0.3.0 (2017-10-27)

* Added more tests and refactored

## 0.2.0 (2017-10-27)

* Added `README.md`

## 0.1.0 (2017-10-27)

* First release.
