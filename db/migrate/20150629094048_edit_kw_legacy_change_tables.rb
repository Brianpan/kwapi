class EditKwLegacyChangeTables < ActiveRecord::Migration
  def change
 
    rename_table :categorys, :categories
    rename_table :imagefile, :imagefiles
    rename_table :kwarticleshare, :kwarticleshares
    rename_table :kwcaseinfo, :kwcaseinfos
    rename_table :kwhotkw, :kwhotkws
    rename_table :kwincomex, :kwincomexs
    rename_table :kwmissedrec, :kwmissedrecs
    rename_table :kwpositiverec, :kwpositiverecs
    rename_table :kwtrace, :kwtraces
    rename_table :kwuser, :users
    rename_table :kwuserkwlog, :kwuserkwlogs
    rename_table :kwvisit, :kwvisits
    rename_table :published, :articles
    rename_table :team, :teams

    drop_table :kwday
    drop_table :kwdisabledx
    drop_table :kwinf
    drop_table :kwrelatelink
    drop_table :kwresetpass
    drop_table :kwsermember
    drop_table :jsonfiles
  end
end
