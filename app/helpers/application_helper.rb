module ApplicationHelper
  def self.get_text
    # "hello monkey hello bob bob blob blob blob. mon mon. 678551438"
    params.require(:text)
  end
end
