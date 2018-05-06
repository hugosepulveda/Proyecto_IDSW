from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, BooleanField, SubmitField
from wtforms.validators import DataRequired

class LoginForm(FlaskForm):
    nombre_usuario = StringField('Username', validators=[DataRequired()])
    contrasena = PasswordField('Password', validators=[DataRequired()])
    remember_me = BooleanField('Remember Me')
    submit = SubmitField('Ingresar')
    
class CreateUserForm(FlaskForm):
	id_usuario = IntegerField('Rut', validators = [DataRequired()])
	nombres = StringField('Nombres', validators = [DataRequired()])
	apellidos = StringField('Apellidos', validators = [DataRequired()])
	tipo = StringField('Tipo', validtors = [DataRequired()])
	contrasena = StringField('Contraseña', validators = [DataRequired()])
	submit = SubmitField('Crear Usuario')
	
class CreateRequestForm(FlaskForm):
	material = StringField('Material', validators=[DataRequired()])
	cant_material = IntegerField('Cantidad Material', validators=[DataRequired()])
	comentarios = StringField('Comentarios', validators=[DataRequired()])
	prioridad = StringField('Prioridad', validators=[DataRequired()])
	submit = SubmitField('Crear Solicitud')