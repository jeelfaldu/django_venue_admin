<h1>Hello {{ $user->name }}</h1>
<p>
	Please click reset password button to reset your password.
<a href="{{ url('resetpassword/'.$user->email.'/'.$code) }}"> Reset Password</a>
</p>