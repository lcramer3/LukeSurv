module CategoriesHelper
  def checked(area)
    @category.name.nil? ? false : @category.name.match(area)
  end
end
