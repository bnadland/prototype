package App;
use Mojo::Base 'Mojolicious';

sub startup {
	my $self = shift;

	# documentation /perldoc
	$self->plugin('PODRenderer');

	# app.conf
	$self->plugin('Config');

	# set secret
	$self->secret($self->config->{'secret'});

	my $r = $self->routes;

	# routes
	$r->get('/')->to('app#index');
	$r->get('/about')->to('app#about');
}

1;
