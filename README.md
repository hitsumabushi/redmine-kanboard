# Redmine-Kanboards

Redmine Plugin for coordinate w/ [Kanboard](http://kanboard.net/).

Kanboard is a simple task board software.
It's very instinctive tool and suittable tool for Kanban methodology.

## TODO
- [X] When a Redmine's ticket created, create a Kanboard's task
- [ ] When a Redmine's ticket closed, close the corresponding Kanboard's task


## Installation
1. Go to your redmine directory.
2. Go into plugins directory.
    ```
    cd plugins
    ```
3. Clone this repository
    ```
    git clone https://github.com/hitsumabushi/redmine-kanboard.git
    ```
4. Restart redmine.
5. Login redmine and open project.
6. You can find 'Kanboard' tab.
7. Set URL like below.
    ```
    http://{Kanboard URL}?controller=webhook&action=task&token={Webhook Token}&project_id={Project ID}
    # - Webhook Token : See Settings page. (http://{Kanboard URL}?controller=config&action=webhook)
    # - Project ID    : See Kanboard project url
    ```

8. That's ALL. Create Redmine Tickets!!

