import { ActionTypes } from "../constant/action_type";

const initialState = {
    SearchAsker:[],
};

export default function SearchAskerReducer(state = initialState, { type, payload })  {
  switch (type) {
    case ActionTypes.SERACH_ASKER : {
      return { ...state, SearchAsker: payload };
  }
    default: {
      return state;
    }
  }
};
