# Name of exercise

You work at a big summer camp - one that has it's own IT department.  The scheduling department has a program that
generates arrays of activities that campers should attend, like this:

```json
["archery", "swimming", "crafts", "archery", "archery", "crafts"]
```

The scheduling software is pretty terrible, and doesn't follow the camp's rules, which are:

* Campers must do each activity at least twice in a row (to minimize the transition time)
* It's OK if the last activity of the camper's day is not repeated

## Step 1: Determining consecutive elements

The first step in validating a schedule is to produce an array of all the activities, along with
the number of _consecutive_ times they are in that
activity.

Given the following array `["archery", "swimming", "swimming", "crafts", "archery", "archery", "crafts"]` your code should produce:

```ruby
  [
    ["archery", 1],
    ["swimming", 2],
    ["crafts", 1],
    ["archery", 2],
    ["crafts", 1],
  ]
```

## Step 2: Validating the schedule

Once you have created the above array, you need validate that the array matches the camp's rules.

Given the following input:

```ruby
  [
    ["archery", 1],
    ["swimming", 2],
    ["crafts", 1],
    ["archery", 2],
    ["crafts", 1],
  ]
```

your method will return false.

Given the following input:

```ruby
  [
    ["archery", 2],
    ["swimming", 2],
    ["archery", 2],
    ["crafts", 1],
  ]
```

your method will return true.

There is one more case that you will need to define to make sure the validation code is complete.
Can you figure out what it is?

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
