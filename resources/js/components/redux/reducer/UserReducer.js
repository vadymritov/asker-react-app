import { ActionTypes } from "../constant/action_type";

const initialState = {
    UserProfile: [],
    user:false,
};

export default function UserReducer(
  state = initialState,
  { type, payload }
) {
  
  switch (type) {
    case ActionTypes.USER_PROFILE: {
      return { ...state, UserProfile: payload };
    }
    case ActionTypes.USER: {
      return { ...state, user: payload };
    }
    default: {
      return state;
    }
  }
}
