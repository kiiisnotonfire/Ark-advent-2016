? my $category = $c->stash->{category};

? extends 'common/jobs_base';

?= include('job/_partial_jobs', $category->get_active_jobs);

? block title => sub { sprintf 'Jobs in the %s category', $category->name };

