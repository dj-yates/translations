package Translations::Http::Controllers::Controller;

use strict;
use warnings;

use Foundation::Appify;

sub new {
    my $class = shift;

    my $self = {};
    bless $self, $class;

    return $self;
}

sub welcome {
    my $self = shift;
    my $request = shift;

    app()->translate();

    app()->pushToStack('scripts', servicePath('translations') . '/script.js');

    my $template = &_::template('translations::welcome', {
        email => user()->get('email'),
    });

    return $template->output();
}

1;
