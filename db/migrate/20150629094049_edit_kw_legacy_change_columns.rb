class EditKwLegacyChangeColumns < ActiveRecord::Migration
  def change
    change_table :categories do |t|
      t.remove :folder
      t.remove :status
      t.rename :created, :created_at
      t.datetime :updated_at
    end
    
    change_table :imagedirs do |t|
      t.rename :code, :id
      t.rename :last, :created_at
    end

    change_table :kwarticleshares do |t|
      t.rename :articleCount, :article_count
      t.rename :articleshareTo, :article_share_to
      t.rename :articleshareuserName, :articleshareuser_name
      t.rename :articleshareRead, :articleshare_read
      t.rename :articleshareAuto, :id
      
      t.remove :articleshareDate
      t.remove :articleshareTime

      t.timestamps
    end
    
    change_table :kwcaseinfos do |t|
      t.rename :kwuser_id, :user_id
      t.rename :Sup_Member_Code, :sup_member_code
      t.rename :Ser_Member_Code, :ser_member_code
      t.rename :ID_Number, :id_number
      t.rename :caseAvatar, :case_avatar
      t.rename :Gender, :gender
      t.rename :Birthday, :birthday
      t.rename :Mail_Address, :mail_address
      t.rename :Home_Address, :home_address
      t.rename :Now_Status, :now_status
      t.rename :Benefits, :benefits
      t.rename :Life, :life
      t.rename :Service_Type, :service_type
      t.rename :House_Desc, :house_desc
      t.rename :Disabled, :disabled
      t.rename :Pension_Type, :pension_type 

      t.timestamps
    end    
   
    change_table :kwhotkws do |t|
      t.rename :kwhotkwTimes, :kwhotkw_times
      t.rename :kwhotkwAuto, :id
      
      t.timestamps
    end    

    change_table :kwmissedrecs do |t|
      t.rename :kwmissedrecAuto, :id
      
      t.timestamps
    end    
    
    change_table :kwpositiverecs do |t|
      t.rename :kwpublished_code, :articles_code
      t.rename :kwpositiverecAuto, :id

      t.integer :article_id 
      t.timestamps
    end    
    
    change_table :users do |t|
      t.rename :userName, :name
      t.rename :userSex, :sex
      t.rename :userEmail, :email
      t.rename :userMobile, :mobile
      t.rename :userFbUID, :fb_uid
      t.rename :userFbToken, :fb_token
      t.rename :userFbEmail, :fb_email
      t.rename :userWbUID, :wb_uid
      t.rename :userQqUID, :qq_uid
      t.rename :userFullname, :fullname
      t.rename :userProvince, :province
      t.rename :userCity, :city
      t.rename :userBio, :bio
      t.rename :userAvatar, :avatar
      t.rename :userJoinTime, :user_join_time
      t.rename :userActive, :active
      t.rename :userRole, :role
      t.rename :Sup_Member_Code, :sup_member_code
      t.rename :userAuto, :id

      t.remove :userDesc
      t.remove :userLogo
      t.remove :userConfirmCode
      t.remove :userIsEmailConfirm
      t.remove :userIsCert
      t.remove :userIsVIP

    end  

    change_table :kwuserkwlogs do |t|
      t.rename :kwuserkwlogTime, :created_at
      t.rename :kwuserkwlogAuto, :id

      t.integer :user_id      
      t.datetime :updated_at
    end 

    change_table :kwvisits do |t|
      t.rename :publish_new_code, :article_code
      t.rename :userAuto, :user_id
      t.rename :visitorDate, :created_at
      t.rename :visitorAuto, :id

      t.datetime :updated_at
      t.integer :article_id
    end 

    change_table :articles do |t|
      t.rename :count, :id
      t.rename :category, :category_id
      
      t.remove :path
      t.remove :old_cards
    end    
  end
end
