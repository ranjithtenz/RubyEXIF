require "test/unit"
require "exif"

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @@d = Exif.new
  end

  def test_jpgfiles
  #MyTest::setup()
      assert_equal(13, @@d.get_size())
      assert_operator(@@d.get_size(), :>, 0)
  end

  def test_get_first_width
    assert_equal(2592, @@d.get_first_width)
  end
  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_fail

    # To change this template use File | Settings | File Templates.
    # fail("Not implemented")
  end
end
