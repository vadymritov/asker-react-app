import { ActionTypes } from "../constant/action_type";

export const setAllAsker = (item) => {
  return {
    type: ActionTypes.ALL_ASKER,
    payload: item,
  };
}

export const setActiveAsker = (item) => {
  return {
    type: ActionTypes.ACTIVE_ASKER,
    payload: item,
  };
}

export const setAchivedAsker = (item) => {
  return {
    type: ActionTypes.ACHIVED_ASKER,
    payload: item,
  };
}
