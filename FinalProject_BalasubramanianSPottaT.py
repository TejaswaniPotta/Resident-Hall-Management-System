#!/usr/bin/env python
# coding: utf-8

# ## FINAL PROJECT - TEAM: BalasubramanianSPottaT

# In[4]:


# Import Required Libraries
import pymysql.cursors
import pymysql
import getpass


# Login to Database to run Application

# In[5]:


# Database Access verification
username = input("Enter MYSQL username: ")
password = getpass.getpass(prompt = "Enter MYSQL password: ")


# Create Connection to Database for Application

# In[6]:


# Connection Function
def create_conn(username, password):
    connection = pymysql.connect(host='localhost',
                                 user=username,
                                 password=password,
                                 database=None,
                                 cursorclass=pymysql.cursors.DictCursor)
    return connection


# Function to Login to Application

# In[7]:


def getAppLogin():
    a_username = input("Enter application username: ")
    a_password = getpass.getpass(prompt = "Enter application password: ")
    return a_username, a_password


# In[8]:


# Login to application - if user exists and is a valid user return 1; inactive user 0; user does not exist -1;
def begin_app(username, password, a_username, a_password):
    conn = create_conn(username, password);
    with conn:
        with conn.cursor() as cursor:
            cursor.callproc('finalproject_BalasubramanianSPottaT.useraccess_R', (a_username, a_password,))
            result = cursor.fetchall()
            if result:
                if result[0]['active'] == '1':
                    return 1
                else:
                    return 0
            else:
                return -1        


# ## Functions for Supervisor User Role

# View Proctor Details assigned to Resident Hall that the Supervisor Handles

# In[114]:


def supervisor_viewP(supervisor_id):    
    conn = create_conn(username, password);
    with conn:
        with conn.cursor() as cursor:
            cursor.callproc('finalproject_BalasubramanianSPottaT.user_CRUD_read', (supervisor_id,))
            result = cursor.fetchall()    
            if not result:
                print ("No Proctor of given ID found against your Resident Hall")
            else:
                return result
    return None;


# Update Proctor Details assigned to Resident Hall that the Supervisor Handles 

# In[116]:


def supervisor_updateP(proct):
    print("Proctor ID being updated : ", proct[0]['user_id'])
    print("Phone Number in System : ", proct[0]['phone_number'])
    print("Email ID in System : ", proct[0]['mail_id'])
    phone = input("Enter Updated Phone Number (if no updates - enter old phone number) : ")
    mail = input("Enter Updated Email Address (if no updates - enter old email ID) : ")

    if phone.isnumeric() == True and len(phone) == 10 and '@' in mail: 
        try:
            conn = create_conn(username, password);
            with conn:
                with conn.cursor() as cursor:
                    cursor.callproc('finalproject_BalasubramanianSPottaT.user_CRUD_update', (proct[0]['user_id'], phone, mail,))
                    conn.commit()   
                    print ("SUCCESS! Record successfully updated")
        except:
            print ("Error updating records")
    else:
        print ("Invalid Phone Number/Email ID provided")


# Add New Proctor be Assigned to system

# In[117]:


def supervisor_addP():
    proc_id = input("Proctor ID  : ")
    fname = input("First Name  : ")
    lname = input("Last Name  : ")    
    phone = input("Phone Number : ")
    mail = input("Email Address : ")

    if proc_id != None and fname != None and lname != None and phone.isnumeric() == True and len(phone) == 10 and '@' in mail: 
        try:
            conn = create_conn(username, password);
            with conn:
                with conn.cursor() as cursor:
                    cursor.callproc('finalproject_BalasubramanianSPottaT.user_CRUD_create', (proc_id, fname, lname, phone, mail,))
                    conn.commit()  
                    print ("SUCCESS! Proctor details successfully inserted")

        except:
            print ("Error inserting records")
    else:
        print ("Record has issues in it. Correct the record before insertion")


# Assign a Proctor to the Resident Hall

# In[118]:


def supervisor_assignP_RH(supervisor_id):
    proc_id = input("Enter New Proctor ID  : ")

    if proc_id != None: 
        try:
            conn = create_conn(username, password);
            with conn:
                with conn.cursor() as cursor:
                    cursor.execute('select * from finalproject_BalasubramanianSPottaT.resident_hall where supervisor_id != %s and proctor_id = %s', (supervisor_id, proc_id,))
                    result = cursor.fetchall()
                    if result:
                        print ("Proctor already assigned to another Resident Hall")
                    else:
                        cursor.callproc('finalproject_BalasubramanianSPottaT.hall_CRUD_update', (supervisor_id, proc_id,))
                        conn.commit()   
                        print ("SUCCESS! Resident Hall assignment successfully updated")

        except:
            print ("Error Changing Proctor Assignments records")
    else:
        print ("Enter Valid Proctor ID")


# Remove a Proctor from RSO Assignments

# In[119]:


def supervisor_removeP():
    proc_id = input("Enter Proctor ID to Delete  : ")

    if proc_id != None: 
        try:
            conn = create_conn(username, password);
            with conn:
                with conn.cursor() as cursor:
                    cursor.callproc('finalproject_BalasubramanianSPottaT.proctor_CRUD_delete', (proc_id,))
                    conn.commit()   
                    print ("SUCCESS! Proctor successfully deleted")                    
        except:
            print ("Error Deleting Proctor. Check if the Proctor is assigned to a Resident Hall and Change Assignments.")
    else:
        print ("Enter Valid Proctor ID")


# View Unassigned Proctors that can be assigned to Resident Hall

# In[89]:


def supervisor_viewUnassigned():
    conn = create_conn(username, password);
    with conn:
        with conn.cursor() as cursor:
            cursor.callproc('finalproject_BalasubramanianSPottaT.user_CRUD_read_unassigned')
            result = cursor.fetchall()    
            if not result:
                print ("No Unassigned Proctors Available")
            else:
                print (result)
                return result
    return None;


# Supervisor - Main Menu

# In[120]:


def supervisor_app(user):
    flag = 0
    while flag == 0:
        choice = input('Selection Action from Menu : \n 1. View Proctor Details for assigned Resident Hall \n 2. Update Proctor Details \n 3. Add new Proctor to System \n 4. Assign Proctor to RH \n 5. Remove Proctor From System \n 6. View Unassigned Proctors \n 7. Logout \n Enter your choice (1-7): ');
        if choice.isdigit() == True and int(choice) >= 1 and int(choice) <= 7:
            flag = 1;
        else:
            print ('Invalid Choice. Please Try Again')
        if flag == 1:
            try:
                if int(choice) == 1:
                    result = supervisor_viewP(user['user_id']);
                    print ("Proctor details: \n Resident Hall : ", result[0]['hallname'],"\n Proctor ID : ", result[0]['user_id'], '\n Name : ', result[0]['first_name'], ' ', result[0]['last_name'], '\n Mobile : ', result[0]['phone_number'], '\n Email : ', result[0]['mail_id'])
                    flag = 0
                elif int(choice) == 2:
                    supervisor_updateP(supervisor_viewP(user['user_id']));
                    flag = 0
                elif int(choice) == 3:
                    supervisor_addP();
                    flag = 0
                elif int(choice) == 4:
                    supervisor_assignP_RH(user['user_id']);
                    flag = 0
                elif int(choice) == 5:
                    supervisor_removeP()
                    flag = 0
                elif int(choice) == 6:
                    supervisor_viewUnassigned()
                    flag = 0
                else:
                    return None
            except:
                print ("Server Issues/Database Issues. Please try again later")


# ## Functions for Proctor User Role

# Proctor - View my current Assignment

# In[121]:


def proctor_currA(proc_id):
    conn = create_conn(username, password);
    with conn:
        with conn.cursor() as cursor:
            cursor.callproc('finalproject_BalasubramanianSPottaT.user_CRUD_read_proctor', (proc_id,))
            result = cursor.fetchall()    
            if not result:
                print ("No Assignment Details found for Proctor")
            else:
                return result
    return None;    


# Proctor - Read resident details

# In[139]:


def proctor_readRes(proc_id):
    resident_id = input("Enter Resident ID : ")
    conn = create_conn(username, password);
    with conn:
        with conn.cursor() as cursor:
            cursor.callproc('finalproject_BalasubramanianSPottaT.ress_CRUD_read_proctor', (proc_id, resident_id,))
            result = cursor.fetchall()    
            if not result:
                print ("Resident details not found. Check if resident is attached to a different resident hall")
            else:
                return result
    return None;        


# Proctor - Update resident room number

# In[217]:


def proctor_updRes(proc_id):
    result = proctor_readRes(proc_id);
    if not result:
        print ("Resident Not Found")
    else:
        room_no = input("Enter New Room Number : ")
    if room_no.isnumeric() == True:
        try:
            conn = create_conn(username, password);
            with conn:
                with conn.cursor() as cursor:
                    cursor.callproc('finalproject_BalasubramanianSPottaT.ress_CRUD_update', (result[0]['resident_id'], room_no,))
                    conn.commit()   
                    print ("SUCCESS! Resident Room assignment successfully updated")

        except:
            print ("Error Changing Resident Room Assignment")


# Proctor - Read number of guests currently associacted with Resident

# In[172]:


def proctor_readGuest(proc_id):
    result = proctor_readRes(proc_id);
    if result != None:
        conn = create_conn(username, password);
        with conn:
            with conn.cursor() as cursor:
                cursor.callproc('finalproject_BalasubramanianSPottaT.guest_CRUD_read', (result[0]['resident_id'],))
                result = cursor.fetchall()
                return result


# Proctor - Add new guest (ensure ID available) for resident (max 3)

# In[203]:


def proctor_addGuest(proc_id):
    result = proctor_readRes(proc_id);
    if result != None:
        res_id = result[0]['resident_id']
        conn = create_conn(username, password);
        with conn:
            with conn.cursor() as cursor:
                cursor.callproc('finalproject_BalasubramanianSPottaT.guest_CRUD_read', (result[0]['resident_id'],))
                result = cursor.fetchall()
                if result and result[0]['no_of_guests'] == 3:
                    print ("Maximum Guest logging capacity for Resident. Log guests out before you can log new guests in")
                else:
                    fname = input("First Name  : ")
                    lname = input("Last Name  : ")
                    id_type = input("Identification Type : \n 1. Passport \n 2. Driving License \n 3. State ID \n Enter Input (1-3) ")
                    if not(id_type.isdigit() == True and int(id_type) >= 1 and int(id_type) <= 3):
                        print("Invalid ID details provided")
                        return None                            
                    else:
                        if int(id_type) == 1:
                            card_id = input("Passport ID  : ")
                            country = input("Country of Nationality  : ")
                            expiry_date = input("Expiry Date : ")
                        if int(id_type) == 2:
                            card_id = input("DL ID  : ")
                            country = input("State of Issue  : ")
                            expiry_date = input("Expiry Date : ")
                        if int(id_type) == 3:
                            card_id = input("State ID Number  : ")
                            country = input("State of Issue  : ")
                            expiry_date = input("Date of Birth : ")                                    

                        if fname != None and lname != None: 
                            try:
                                conn = create_conn(username, password);
                                with conn:
                                    with conn.cursor() as cursor:
                                        cursor.callproc('finalproject_BalasubramanianSPottaT.guest_CRUD_create', (fname, lname, res_id, card_id,))
                                        if int(id_type) == 1:
                                            cursor.callproc('finalproject_BalasubramanianSPottaT.guest_pp_CRUD_create', (card_id, country, expiry_date,))
                                        if int(id_type) == 2:
                                            cursor.callproc('finalproject_BalasubramanianSPottaT.guest_dl_CRUD_create', (card_id, country, expiry_date,))
                                        if int(id_type) == 3:
                                            cursor.callproc('finalproject_BalasubramanianSPottaT.guest_stateid_CRUD_create', (card_id, country, expiry_date,))

                                        conn.commit()  
                                        print ("SUCCESS! Guest Successfully Logged In")

                            except:
                                print ("Error inserting records")
                        else:
                            print ("Record has issues in it. Correct the record before insertion")
                        


# Proctor - Log Guest Out

# In[204]:


def proctor_delGuest(proc_id):
    result = proctor_readGuest(proc_id);
    if result != None:
        if int(result[0]['no_of_guests']) > 0:
            guest_id = input("Enter Guest ID Number to be logged off : ")
            conn = create_conn(username, password);
            with conn:
                with conn.cursor() as cursor:
                    cursor.callproc('finalproject_BalasubramanianSPottaT.guest_pp_CRUD_del', (guest_id,))
                    cursor.callproc('finalproject_BalasubramanianSPottaT.guest_dl_CRUD_del', (guest_id,))
                    cursor.callproc('finalproject_BalasubramanianSPottaT.guest_sid_CRUD_del', (guest_id,))
                    cursor.callproc('finalproject_BalasubramanianSPottaT.guest_CRUD_del', (guest_id,))
                    conn.commit() 
                    print ("SUCCESS! Guest Successfully Logged Off!")


# In[208]:


def proctor_app(user):
    flag = 0
    while flag == 0:
        choice = input('Selection Action from Menu : \n 1. View my current Assignment \n 2. Read resident details \n 3. Update resident room number \n 4. Read number of guests currently associacted with Resident \n 5. Add new guest (ensure ID available) for resident (max 3) \n 6. Log Guest Out \n 7. Logout \n Enter your choice (1-7): ');
        if choice.isdigit() == True and int(choice) >= 1 and int(choice) <= 7:
            flag = 1;
        else:
            print ('Invalid Choice. Please Try Again')
        if flag == 1:
            try:
                if int(choice) == 1:
                    result = proctor_currA(user['user_id']);
                    if result:
                        print ("Current Assignment Details : \n Resident Hall : ", result[0]['hallname'],"\n Proctor ID : ", result[0]['user_id'], '\n Name : ', result[0]['first_name'], ' ', result[0]['last_name'], '\n Mobile : ', result[0]['phone_number'], '\n Email : ', result[0]['mail_id'])
                    flag = 0
                elif int(choice) == 2:
                    result = proctor_readRes(user['user_id']);
                    if result:
                        print ("Resident details: \n Resident Hall : ", result[0]['hallname'],"\n Resident ID : ", result[0]['resident_id'], '\n Name : ', result[0]['first_name'], ' ', result[0]['last_name'], '\n Mobile : ', result[0]['phone_number'], '\n Room Number : ', result[0]['room_number'])
                    flag = 0
                elif int(choice) == 3:
                    proctor_updRes(user['user_id']);
                    flag = 0
                elif int(choice) == 4:
                    result = proctor_readGuest(user['user_id']);
                    if result:
                        print ("Currently ", result[0]['no_of_guests'], ' guests associated with resident')
                    flag = 0
                elif int(choice) == 5:
                    proctor_addGuest(user['user_id'])
                    flag = 0
                elif int(choice) == 6:
                    proctor_delGuest(user['user_id'])
                    flag = 0
                else:
                    return None
            except:
                print ("Server Issues/Database Issues. Please try again later")


# ## Application - Main Code

# In[211]:


print ("WELCOME TO RSO SYSTEM \n Proceed to Login")

login = -1
max_login_tries = 5
ct = 1
try_a = 'Y'
flag = 1

# Get Application Login Details
try:
    while (login == -1 or login == 0) and ct <= max_login_tries:
        a_username, a_password = getAppLogin()

        # Login Verification - Read Operation of User Access
        login = begin_app(username, password, a_username, a_password)
        
        if login == -1 or login == 0:
            try_a = input ("Access Denied. Invalid/Inactive User. Would you like to try again (Press any key to continue)?")
        
        ct += 1
except:
    print ("Error Logging In")


# In[212]:


if login == 1:
    conn = create_conn(username, password);
    with conn:
        with conn.cursor() as cursor:
            cursor.execute('select * from finalproject_BalasubramanianSPottaT.user where user_id = {}'.format(a_username))
            result = cursor.fetchall()
    user_role = result[0]['role'] 
    print ("WELCOME ", user_role, " : ", result[0]['first_name'], " ", result[0]['last_name'])
    if user_role == 'Supervisor':
        supervisor_app(result[0])
    if user_role == 'Proctor':
        proctor_app(result[0])

