? extends 'common/jobs_base';

<!-- some HTML code -->

        <h1>
          <a href="<?= $c->uri_for('/category', $category->slug) ?>">
            <?= $category->name ?>
          </a>
        </h1>

<!-- some HTML code -->

? block content => sub {
<div id="jobs">
  <table class="jobs">
? my $i = 0;
? for my $job ($c->stash->{jobs}->all) {
? $i++;
      <tr class="<?= $i % 2 == 0 ? 'even' : 'odd' ?>">
        <td class="location"><?= $job->location ?></td>
        <td class="position">
          <a href="<?= $c->uri_for('/job', $job->id) ?>">
            <?= $job->position ?>
          </a>
        </td>
        <td class="company"><?= $job->company ?></td>
      </tr>
? } # endfor
</table>
</div>
? } # endblock content

?= include('job/_partial_jobs', $category->get_active_jobs({ rows => $max_rows }));

? my $count = $category->get_active_jobs->count;
? if ( (my $rest = $count - $max_rows) > 0 ) {
      <div class="more_jobs">
        and <a href="<?= $c->uri_for('/category', $category->slug) ?>"><?= $rest ?></a>
        more...
      </div>
? } # endif

    </div>

<!-- some HTML code -->
