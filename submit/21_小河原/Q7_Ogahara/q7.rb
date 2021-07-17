module Hoge
	def foo
		"Foo" + bar

		end

		private
		def bar
			"Bar"

		end

	end


	class Test 
		exted Hoge

	end

	print Test.foo

