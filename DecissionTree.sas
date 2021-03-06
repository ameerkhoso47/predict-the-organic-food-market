options VALIDMEMNAME=EXTEND VALIDVARNAME=ANY;

   /**** User ID: tp043357@mail.apu.edu.my ****/

   /**** Model Name: DecissionTree ****/
   /*---------------------------------------------------------
   SAS Code Generated by LASR Analytic Server for Decision Tree
     Date              : 02Aug2017:07:27:36
     Locale            : en_US
     Response variable : TargetBuy
     Number of nodes   : 17
     -------------------------------------------------------*/

   length _strfmt_ $10; drop _strfmt_;
   _strfmt_ = ' ';

   array _tlevname_0_{2} $10 _temporary_ ( 'No' 
   'Bought');

   _node_id_ =  0;
   _new_id_  = -1;
   nextnode_0:
      if _node_id_ eq 0 then do;
         _strfmt_ = left(trim(put(DemGender,$1.)));
         if _strfmt_ in ('U',
         'M') then do;

         _new_id_ = 1;
         end;
         else if _strfmt_ in ('F') then do;

         _new_id_ = 2;
         end;
         else do;
         _new_id_ = 2;
         end;
      end;
      else if _node_id_ eq 1 then do;
         _strfmt_ = left(trim(put(DemGender,$1.)));
         if _strfmt_ in ('M') then do;

         _new_id_ = 3;
         end;
         else if _strfmt_ in ('U') then do;

         _new_id_ = 4;
         end;
         else do;
         _new_id_ = 3;
         end;
      end;
      else if _node_id_ eq 2 then do;
         _strfmt_ = left(trim(put(DemAgeGroup,$10.)));
         if _strfmt_ in ('young',
         'middle',
         'unknown') then do;

         _new_id_ = 5;
         end;
         else if _strfmt_ in ('senior') then do;

         _new_id_ = 6;
         end;
         else do;
         _new_id_ = 5;
         end;
      end;
      else if _node_id_ eq 3 then do;
         _strfmt_ = left(trim(put(DemAgeGroup,$10.)));
         if _strfmt_ in ('young',
         'middle',
         'unknown') then do;

         _new_id_ = 7;
         end;
         else if _strfmt_ in ('senior') then do;

         _new_id_ = 8;
         end;
         else do;
         _new_id_ = 7;
         end;
      end;
      else if _node_id_ eq 4 then do;
         _leaf_id_ = 4;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =     0.92157783517257;
      end;
      else if _node_id_ eq 5 then do;
         _strfmt_ = left(trim(put(DemAgeGroup,$10.)));
         if _strfmt_ in ('middle',
         'unknown') then do;

         _new_id_ = 9;
         end;
         else if _strfmt_ in ('young') then do;

         _new_id_ = 10;
         end;
         else do;
         _new_id_ = 9;
         end;
      end;
      else if _node_id_ eq 6 then do;
         _leaf_id_ = 6;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =      0.7809939923539;
      end;
      else if _node_id_ eq 7 then do;
         _strfmt_ = left(trim(put(DemAgeGroup,$10.)));
         if _strfmt_ in ('middle',
         'unknown') then do;

         _new_id_ = 11;
         end;
         else if _strfmt_ in ('young') then do;

         _new_id_ = 12;
         end;
         else do;
         _new_id_ = 11;
         end;
      end;
      else if _node_id_ eq 8 then do;
         _leaf_id_ = 8;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =     0.89772125066242;
      end;
      else if _node_id_ eq 9 then do;
         _leaf_id_ = 9;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =     0.61559473553513;
      end;
      else if _node_id_ eq 10 then do;
         _strfmt_ = left(trim(put(DemReg,$10.)));
         if _strfmt_ in ('South West',
         'Midlands',
         'North',
         'South East',
         'Unknown') then do;

         _new_id_ = 13;
         end;
         else if _strfmt_ in ('Scottish') then do;

         _new_id_ = 14;
         end;
         else do;
         _new_id_ = 13;
         end;
      end;
      else if _node_id_ eq 11 then do;
         _leaf_id_ = 11;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =     0.81180811808118;
      end;
      else if _node_id_ eq 12 then do;
         _strfmt_ = left(trim(put(DemReg,$10.)));
         if _strfmt_ in ('Midlands',
         'North',
         'Scottish',
         'South East',
         'Unknown') then do;

         _new_id_ = 15;
         end;
         else if _strfmt_ in ('South West') then do;

         _new_id_ = 16;
         end;
         else do;
         _new_id_ = 15;
         end;
      end;
      else if _node_id_ eq 13 then do;
         _leaf_id_ = 13;
         _new_id_ = -1;
         _dt_pred_lev_ = 1;
         _dt_pred_prob_ =     0.71980676328502;
      end;
      else if _node_id_ eq 14 then do;
         _leaf_id_ = 14;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =     0.52631578947368;
      end;
      else if _node_id_ eq 15 then do;
         _leaf_id_ = 15;
         _new_id_ = -1;
         _dt_pred_lev_ = 0;
         _dt_pred_prob_ =     0.56818181818181;
      end;
      else if _node_id_ eq 16 then do;
         _leaf_id_ = 16;
         _new_id_ = -1;
         _dt_pred_lev_ = 1;
         _dt_pred_prob_ =                    1;
      end;
      if _new_id_ >= 0 then do;
          _node_id_ = _new_id_;
         goto nextnode_0;
      end;

      DT_TargetBuy = _tlevname_0_{_dt_pred_lev_+1};
      drop _node_id_;
      drop _new_id_;


/*------------------------------------------*/
