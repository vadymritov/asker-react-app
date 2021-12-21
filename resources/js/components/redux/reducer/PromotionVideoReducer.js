import { ActionTypes } from "../constant/action_type";

const initialState = {
    Videos: [],
};

export default function promotionVideoReducer(state = initialState, { type, payload })  {
  switch (type) {
    case ActionTypes.PROMOTION_VIDEO: {
      return { ...state, Videos: payload };
    }
    default: {
      return state;
    }
  }
};
