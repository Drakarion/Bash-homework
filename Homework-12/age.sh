#!/bin/bash

read -p "Enter your year of birth: " birth_year


current_year=2025
age_now=$((current_year - birth_year))
age_2020=$((2020 - birth_year))
age_2030=$((2030 - birth_year))

echo "Your age now is $age_now"
echo "You were $age_2020 yers old in 2020"
echo "You will be $age_2030 years old in 2030"
