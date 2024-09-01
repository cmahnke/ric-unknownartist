import { Timeline, DataSet } from 'vis-timeline/standalone';

window.addTimeline = function (id, data, options, categories) {
  // See https://visjs.github.io/vis-timeline/docs/timeline/
  var div;
  const items = new DataSet(data)

  if (!(id instanceof HTMLElement)) {
    div = document.getElementById(id);
  } else {
    div = id;
  }

  if (options === undefined) {
    options = {};
  }

  var timeline = new Timeline(div);
  //var timeline = new Timeline(div, items, options);
  timeline.setOptions(options);
  if (categories !== undefined) {
    var groups = new DataSet(categories);
    timeline.setGroups(groups);
  }
  timeline.setItems(items);

  return timeline;
}
