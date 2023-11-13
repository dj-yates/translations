package Translations::ServiceProvider;

use parent qw(
    Foundation::ServiceProvider
);

use strict;
use warnings;
use Foundation::Appify;

# The parent service provider handles the default behaviour.
# Add additional functionality in here.

sub gateway {
    my $self = shift;

    my $gateway = $self->SUPER::gateway();

    $gateway->{name} = lc $gateway->{name};

    return $gateway;
}

sub register {
    my $self = shift;

    $self->SUPER::register();

    app()->{macros}->{translate} = sub {
        die;
    };
}

1;
