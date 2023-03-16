//
//  Story.swift
//  AdventureStory
//
//  Created by Nordo on 3/16/23.
//

import Foundation

struct Story {
    let storyText: String //text of the story
    let choice1: String //text for the first choice
    let choice1Destination: Int //where does this choice go
    let choice2: String //text for the first choice
    let choice2Destination: Int //where does this choice go
    let storyImage: String
    let endOfStory: Bool
}


let stories = [
    //Page 0
    Story(storyText: "You are a brave adventurer, exploring a mysterious forest. As you wander deeper into the woods, you come across an old, abandoned mansion. You notice a rusty old key on the ground. Do you:",
          choice1: "Pick up the key and try it in the front door of the mansion.",
          choice1Destination: 1,
          choice2: "Leave the key where it is and continue exploring the forest.",
          choice2Destination: 2,
          storyImage: "rusty-key",
          endOfStory: false),
    //Page 1
        Story(storyText: "You insert the key into the lock and turn it. The door creaks open, and you step inside. The mansion is dark and spooky, with cobwebs and dust everywhere. You hear a strange noise coming from the basement. Do you:",
              choice1: "Follow the noise down to the basement.",
              choice1Destination: 3,
              choice2: "Leave the mansion and continue exploring the forest.",
              choice2Destination: 4,
              storyImage: "forest-door",
              endOfStory: false),

    //Page 2
        Story(storyText: "You decide to leave the key where it is and continue exploring the forest. As you wander deeper into the woods, you realize you are lost. You hear strange noises all around you. Do you:",
              choice1: "Try to find your way back to where you started.",
              choice1Destination: 5,
              choice2: "Keep wandering deeper into the forest.",
              choice2Destination: 6,
              storyImage: "forest-strange-sounds",
              endOfStory: false),
    //Page 3
        Story(storyText: "You follow the noise down to the basement. There, you find a treasure chest filled with gold and jewels! You also find a secret passage that leads to a beautiful garden. You have discovered a hidden gem. Congratulations!",
              choice1: "",
              choice1Destination: 0,
              choice2: "",
              choice2Destination: 0,
              storyImage: "gem",
              endOfStory: true),
    //Page 4
        Story(storyText: "You leave the mansion and continue exploring the forest. As you wander deeper into the woods, you realize you are lost. You hear strange noises all around you. Suddenly, you come face-to-face with a wild bear! You should have explored the mansion instead.",
              choice1: "",
              choice1Destination: 0,
              choice2: "",
              choice2Destination: 0,
              storyImage: "wildbear",
              endOfStory: true),
    //Page 5
        Story(storyText: "You try to find your way back to where you started, but you only get more lost. You hear strange noises all around you. Suddenly, you come face-to-face with a wild bear! You should have explored the mansion instead.",
              choice1: "",
              choice1Destination: 0,
              choice2: "",
              choice2Destination: 0,
              storyImage: "wildbear",
              endOfStory: true),
    //Page 6
        Story(storyText: "You keep wandering deeper into the forest. You hear strange noises all around you. Suddenly, you come face-to-face with a wild bear! You should have explored the mansion instead.",
              choice1: "",
              choice1Destination: 0,
              choice2: "",
              choice2Destination: 0,
              storyImage: "wildbear",
              endOfStory: true)
]
