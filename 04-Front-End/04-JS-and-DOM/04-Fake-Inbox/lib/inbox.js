/* eslint-disable no-multiple-empty-lines */
/* eslint-disable prefer-const */
/* eslint-disable import/extensions */

import runChallenges from "../spec/inbox_examiner.js";

const hasNewMessage = () => {
  // TODO: return true with a probability of 20%.
  const number = Math.floor(Math.random() * 5) + 1;
  if (number === 1) {
    return true;
  } return false;
};

const newMessage = () => {
  // TODO: return a random message as an object with two keys, subject and sender
  const generateRandomString = (length = 6) => Math.random().toString(20).substr(2, length);
  return {
    sender: `${generateRandomString}`,
    subject: `${generateRandomString}`
  };
};

const appendMessageToDom = (message) => {
  // TODO: append the given message to the DOM (as a new row of `#inbox`)
  document.getElementById("inbox").insertAdjacentHTML("beforeend", `${newMessage}`);
};

const refresh = () => {
  // TODO: Implement the global refresh logic. If there is a new message,
  //       append it to the DOM. Update the unread counter in title as well.
};

// Do not remove these lines.
if (typeof window === "object") {
  document.addEventListener("DOMContentLoaded", () => {
    setInterval(refresh, 1000); // Every 1 second, the `refresh` function is called.
  });
}

// Checking exercise answers. DO NOT MODIFY THIS LINE.
runChallenges(hasNewMessage, newMessage);
export { hasNewMessage, newMessage };
