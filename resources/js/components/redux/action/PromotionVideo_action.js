import {ActionTypes} from '../constant/action_type';

export const setPromotionVideo = Videos => {
  return {
    type: ActionTypes.PROMOTION_VIDEO,
    payload: Videos,
  };
};

