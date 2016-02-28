# Tumblrish
Tumblr prototype in Swift

Submitted by: Michelle Venetucci Harvey

Time spent: 6 hours spent in total

## User Stories

The following **required** and **optional** functionality is complete:

* [x] Tapping on Home, Search, Account, or Trending should show the respective screen and highlight the tab bar button.
* [x] Compose button should modally present the compose screen.
* [x] Add a log in form with a modal segue from the home tab
* [x] Optional: Compose screen buttons animate in.
* [x] Optional: Create a Custom Transition to fade in the login screen.
* [x] Optional: Login button should show animate the login form over the view controller.
* [x] Optional: Discover bubble should bob up and down unless the SearchViewController is tapped.
* [x] Optional: Create a Custom Modal Transition so the Compose screen fades in. 
* [x] Optional: Show the custom loading indicator by playing the sequence of pngs.
* [x] Additional optional: Add keyboard events to the sign in screen

## Video Walkthrough 

Here's a walkthrough of all implemented user stories:

![Video Walkthrough](/mailbox_walkthrough/mailbox_walkthrough.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes
The discover bubble instructions stated that "Add an image view to the custom tab bar controller. When the appropriate button is selected, hide the bubble. Otherwise, show it." However, I thought it was better UX to only show it until the user taps the search tab, and then never show it again since the user has now interacted with the item the bubble was referencing. 

If I had wanted to show the bubble whenever any non-search tab was selected, I would have added a `discoverBubbleImageView.hidden = false` to my animateBubble() function. That way it would only hide when the user is on search, and would show on every other tab indefinitely. 

## License

    Copyright 2016 Michelle Venetucci Harvey

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


