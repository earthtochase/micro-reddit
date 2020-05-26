module UsersHelper
    def user_params
        params.require(:username, :password, :email).permit(:age)
    end
end
