# =====================================================
# TASK 0: First constant, first print
# =====================================================

cat > 0-javascript_is_amazing.js <<'EOF'
#!/usr/bin/node

const myVar = 'JavaScript is amazing';

console.log(myVar);
EOF


# =====================================================
# TASK 1: 3 languages
# =====================================================

cat > 1-multi_languages.js <<'EOF'
#!/usr/bin/node

console.log('C is fun');
console.log('Python is cool');
console.log('JavaScript is amazing');
EOF


# =====================================================
# TASK 2: Arguments
# =====================================================

cat > 2-arguments.js <<'EOF'
#!/usr/bin/node

const args = process.argv.length - 2;

if (args === 0) {
  console.log('No argument');
} else if (args === 1) {
  console.log('Argument found');
} else {
  console.log('Arguments found');
}
EOF


# =====================================================
# TASK 3: Value of my argument
# =====================================================

cat > 3-value_argument.js <<'EOF'
#!/usr/bin/node

const argument = process.argv[2];

if (argument === undefined) {
  console.log('No argument');
} else {
  console.log(argument);
}
EOF


# =====================================================
# TASK 4: Create a sentence
# =====================================================

cat > 4-concat.js <<'EOF'
#!/usr/bin/node

const first = process.argv[2];
const second = process.argv[3];

console.log(`${first} is ${second}`);
EOF


# =====================================================
# TASK 5: An Integer
# =====================================================

cat > 5-to_integer.js <<'EOF'
#!/usr/bin/node

const number = parseInt(process.argv[2], 10);

if (Number.isNaN(number)) {
  console.log('Not a number');
} else {
  console.log(`My number: ${number}`);
}
EOF


# =====================================================
# TASK 6: Loop to languages
# =====================================================

cat > 6-multi_languages_loop.js <<'EOF'
#!/usr/bin/node

const languages = [
  'C is fun',
  'Python is cool',
  'JavaScript is amazing'
];

for (const language of languages) {
  console.log(language);
}
EOF


# =====================================================
# TASK 7: I love C
# =====================================================

cat > 7-multi_c.js <<'EOF'
#!/usr/bin/node

const occurrences = parseInt(process.argv[2], 10);

if (Number.isNaN(occurrences)) {
  console.log('Missing number of occurrences');
} else {
  for (let i = 0; i < occurrences; i++) {
    console.log('C is fun');
  }
}
EOF


# =====================================================
# TASK 8: Square
# =====================================================

cat > 8-square.js <<'EOF'
#!/usr/bin/node

const size = parseInt(process.argv[2], 10);

if (Number.isNaN(size)) {
  console.log('Missing size');
} else {
  for (let i = 0; i < size; i++) {
    console.log('X'.repeat(size));
  }
}
EOF


# =====================================================
# TASK 9: Add
# =====================================================

cat > 9-add.js <<'EOF'
#!/usr/bin/node

function add (a, b) {
  return a + b;
}

const first = parseInt(process.argv[2], 10);
const second = parseInt(process.argv[3], 10);

console.log(add(first, second));
EOF


# =====================================================
# TASK 10: Factorial
# =====================================================

cat > 10-factorial.js <<'EOF'
#!/usr/bin/node

function factorial (n) {
  if (Number.isNaN(n) || n <= 1) {
    return 1;
  }

  return n * factorial(n - 1);
}

const number = parseInt(process.argv[2], 10);

console.log(factorial(number));
EOF


# =====================================================
# TASK 11: Second biggest!
# =====================================================

cat > 11-second_biggest.js <<'EOF'
#!/usr/bin/node

const numbers = process.argv.slice(2).map(Number);

if (numbers.length <= 1) {
  console.log(0);
} else {
  numbers.sort((a, b) => b - a);
  console.log(numbers[1]);
}
EOF


# =====================================================
# TASK 12: Object
# =====================================================

cat > 12-object.js <<'EOF'
#!/usr/bin/node

const myObject = {
  type: 'object',
  value: 12
};

console.log(myObject);

myObject.value = 89;

console.log(myObject);
EOF


# =====================================================
# TASK 13: Add file
# =====================================================

cat > 13-add.js <<'EOF'
#!/usr/bin/node

function add (a, b) {
  return a + b;
}

module.exports = { add };
EOF


# =====================================================
# MAKE ALL JAVASCRIPT FILES EXECUTABLE
# =====================================================

chmod +x ./*.js

echo "All 14 JavaScript files created successfully!"
