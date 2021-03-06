class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :sn      
      t.string :birth
      t.string :citizenship
      t.string :caddress
      
      t.string :haddress
      
      t.string :contact
      
      t.string :pname
      
      t.string :pcontact
      
      t.string :paddress
      t.string :desire
      
      t.string :year
      
      t.string :current
      
      t.string :degree
      
      t.string :grades
      
      t.string :sts
      t.string :image
      t.string :stslevel
      t.string :income
      t.string :scholarship
      t.string :funding
      t.string :benefits
      t.string :duration
      t.string :incident
      t.string :disciplinary
      t.string :reason
      t.string :name_confirmation
      t.string :date
      t.string :allow
      t.string :name1
      t.string :name2
      t.string :name3
      t.string :name4
      t.string :name5
      t.string :name6
      t.string :name7
      t.string :relationship1
      t.string :relationship2
      t.string :relationship3
      t.string :relationship4
      t.string :relationship5
      t.string :relationship6
      t.string :relationship7
      t.string :age1
      t.string :age2
      t.string :age3
      t.string :age4
      t.string :age5
      t.string :age6
      t.string :age7
      t.string :living1
      t.string :living2
      t.string :living3
      t.string :living4
      t.string :living5
      t.string :living6
      t.string :living7
      t.string :marital1
      t.string :marital2
      t.string :marital3
      t.string :marital4
      t.string :marital5
      t.string :marital6
      t.string :marital7
      t.string :occupation1
      t.string :occupation2
      t.string :occupation3
      t.string :occupation4
      t.string :occupation5
      t.string :occupation6
      t.string :occupation7

      t.timestamps
    end
  end
end
