# frozen_string_literal: true

# If we build an array like this:

flintstones = %w[Fred Wilma]
flintstones << %w[Barney Betty]
flintstones << %w[BamBam Pebbles]

# We will end up with this "nested" array:

# ['Fred', 'Wilma', %w[Barney Betty], %w[BamBam Pebbles]]

# Make this into an un-nested array.
flintstones.flatten!
p flintstones
