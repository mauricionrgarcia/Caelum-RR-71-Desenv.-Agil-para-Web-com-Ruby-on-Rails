module ApplicationHelper
  def formatted_value(number)
    number_to_currency number,
    unit: "R$ ",
    separator: ",",
    delimiter: "."
  end

  def menu(controllers)
    render partial: "layouts/menu", locals: {options: controllers}
  end

  def back_link
    render partial: "pages/back_link" 
  end

  def new_comment(commentable)
    render partial: "comments/new_comment_form", locals: {commentable: commentable}
  end

  def comments(commentable)
    render partial: 'comments/comments', locals: {comments: commentable.comments}
  end
end
