import { combineReducers } from "redux";
import PromotionVideoReducer from "./PromotionVideoReducer";
import AskerReducer from "./AskerReducer";
import SearchAskerReducer from "./SearchAskerReducer";
import UserProfile from "./UserReducer";

const reducer = combineReducers({
  PromotionVideo: PromotionVideoReducer,
  AllAsker: AskerReducer,
  SearchAsker: SearchAskerReducer,
  UserProfile:UserProfile,
});

export default reducer; 
