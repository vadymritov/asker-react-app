import { ActionTypes } from "../constant/action_type";

export function setSearchAsker(data) {
  return {
    type: ActionTypes.SERACH_ASKER,
    payload: data,
  };
}