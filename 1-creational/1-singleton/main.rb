# frozen_string_literal: true

require_relative './naive_singleton'
require_relative './thread_safe_singleton'

s1 = NaiveSingleton.instance
s2 = NaiveSingleton.instance

puts '======== Test naive singleton'
if s1.equal?(s2)
  puts 'Naive Singleton works'
else
  puts 'Naive Singleton failed'
end

puts '======== Test multiple threads'
process1 = Thread.new do
  singleton = ThreadSafeSingleton.instance('Foo')
  puts singleton.value
end

process2 = Thread.new do
  singleton = ThreadSafeSingleton.instance('Bar')
  puts singleton.value
end

process1.join
process2.join
