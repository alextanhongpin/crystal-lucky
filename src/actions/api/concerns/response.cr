module Api::Concerns::Response
  def created(data)
    json ({data: data}), HTTP::Status::CREATED
  end

  def no_content(data)
    json ({data: data}), HTTP::Status::NO_CONTENT
  end
end
