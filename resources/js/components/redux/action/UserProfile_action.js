import {ActionTypes} from '../constant/action_type';

export const setUserProfile = data => {
  return {
    type: ActionTypes.USER_PROFILE,
    payload: data,
  };
};

export const setUser = data => {
  return {
    type: ActionTypes.USER,
    payload: data,
  };
};
