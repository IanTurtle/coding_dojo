# Solve exercise one using a single script

# Step 1
# These paths will be different depending on where your gitlab repo cloned to
cp ~/repos/coding_dojo_1/directory_two/b/3/SDnlaNmd90ad ~/repos/coding_dojo_1/destination
cd ~/repos/coding_dojo_1/destination

# Step 2
mv SDnlaNmd90ad instruction.txt

# Step 3
chmod 700 instruction.txt

# Step 4
touch personalinfo
echo name: Ian > personalinfo
echo age: 24 >> personalinfo
echo job: Cloud Engineer/Super Model >> personal info

# Step 5
grep Ian personalinfo

# Step 6
cp ~/repos/coding_dojo_1/look_here/hello_world.sh ~/repos/coding_dojo_1/destination

# Step 7
chmod +x ~/repos/coding_dojo_1/destination/hello_world.sh
cd ~/repos/coding_dojo_1/destination
./hello_world.sh
