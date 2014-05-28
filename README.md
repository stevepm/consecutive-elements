# Name of exercise

You work at a big summer camp - one that has it's own IT department.  The scheduling department has a program that
generates arrays of activities that campers should attend, like this:

```json
{
  "john": ["swimming", "swimming", "archery", "archery", "boating", "crafts"],
  "jane": ["archery", "swimming", "crafts", "archery", "boating", "crafts"]
]
```

The scheduling software is pretty terrible, and doesn't follow the camp's main rule, which is:

* Campers must do each activity at least twice in a row (to minimize the transition time)

Your mission, should you choose to accept it, is to come up with a schedule validator.  When given a hash of arrays,
it should find all rule violations, and produce a hash of arrays of violations.

It's OK that campers repeat activities more than twice.

## Examples

Given the following input:

```json
{
  "john": ["swimming", "swimming", "archery", "archery", "boating", "crafts"],
  "jane": ["archery", "swimming", "crafts", "archery", "archery", "crafts"]
]
```

Your code should produce the following report:

```json
{
  "john": ["Has a non-consecutive activity - boating - at position 5"],
  "jane": [
    "Has a non-consecutive activity - archery - at position 1",
    "Has a non-consecutive activity - swimming -  at position 2",
    "Has a non-consecutive activity - crafts -  at position 3",
    "Has a non-consecutive activity - crafts -  at position 6"
  ]
]
```

# Extra

Add more validations that ensure that:

* Campers must have exactly 8 activities every day
* Campers cannot repeat activities - if they went boating in the morning, they can't go boating again later in the day
* Campers cannot repeat an activity more than three times

# Setup

* Fork
* Clone
* Turn on TravisCI for the fork by
  visiting https://travis-ci.org/profile/<github user name>, clicking the "Sync now" button
  and scrolling down to find the repository to build.
* Create a new branch for your work using `git checkout -b v1`
* Implement specs and code
* Push using `git push -u origin v1`

## Further Practice

This warmup can be completed multiple times to increase your comfort level with the material.
To work on this from scratch, you can:

1. Add an upstream remote that points to the original repo `git remote add upstream git@github.com:gSchool/THIS-REPO.git`
1. Fetch the latest from the upstream remote using `git fetch upstream`
1. Create a new branch from the master branch of the upstream remote `git checkout -b v2 upstream/master`
1. Implement specs and code
1. Push using `git push -u origin v2`

Each time you do the exercise, create a new branch. For example the 3rd time you do the exercise the branch
name will be v3 instead of v2.
