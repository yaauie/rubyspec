require File.expand_path('../../../spec_helper', __FILE__)
require File.expand_path('../shared/call', __FILE__)

ruby_version_is "1.8"..."1.9" do
  require File.expand_path("../versions/call_1.8.7", __FILE__)
end

ruby_version_is "1.9" do
  require File.expand_path("../versions/call_1.9", __FILE__)
end

ruby_version_is "1.9" do
  describe "Proc#yield" do
    it_behaves_like :proc_call, :yield
    it_behaves_like :proc_call_block_args, :yield
  end

  describe "Proc#yield on a Proc created with Proc.new" do
    it_behaves_like :proc_call_on_proc_new, :yield
  end

  describe "Proc#yield on a Proc created with Kernel#lambda or Kernel#proc" do
    it_behaves_like :proc_call_on_proc_or_lambda, :yield
  end
end
