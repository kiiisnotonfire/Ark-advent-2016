<!-- some HTML code -->

        <h1>
          <a href="<?= $c->uri_for('/category', $category->slug) ?>">
            <?= $category->name ?>
          </a>
        </h1>

<!-- some HTML code -->

      </table>

? my $count = $category->get_active_jobs->count;
? if ( (my $rest = $count - $max_rows) > 0 ) {
      <div class="more_jobs">
        and <a href="<?= $c->uri_for('/category', $category->slug) ?>"><?= $rest ?></a>
        more...
      </div>
? } # endif

    </div>

<!-- some HTML code -->
