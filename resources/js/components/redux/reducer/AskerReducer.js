import { ActionTypes } from "../constant/action_type";

const initialState = {
  AllAsker: [],
  ActiveAsker: [],
  AchivedAsker: [],
};

export default function promotionVideoReducer(
  state = initialState,
  { type, payload }
) {
  switch (type) {
    case ActionTypes.ALL_ASKER: {
      return { ...state, AllAsker: payload };
    }
    case ActionTypes.ACTIVE_ASKER: {
      return { ...state, ActiveAsker: payload };
    }
    case ActionTypes.ACHIVED_ASKER: {
      return { ...state, AchivedAsker: payload };
    }
    default: {
      return state;
    }
  }
}
