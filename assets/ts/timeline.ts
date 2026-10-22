import { Timeline, DataSet } from 'vis-timeline/standalone';
import type { DataItem, DataGroup, TimelineOptions } from 'vis-timeline/standalone';

// See https://visjs.github.io/vis-timeline/docs/timeline/
window.addTimeline = function (
  id: string | HTMLElement,
  data: DataItem[],
  options?: TimelineOptions,
  categories?: DataGroup[]
): Timeline {
  let div: HTMLElement | null;
  const items = new DataSet(data);

  if (!(id instanceof HTMLElement)) {
    div = document.getElementById(id);
  } else {
    div = id;
  }

  if (options === undefined) {
    options = {};
  }

  const timeline = new Timeline(div!, items, options);
  if (categories !== undefined) {
    const groups = new DataSet(categories);
    timeline.setGroups(groups);
  }
  timeline.setItems(items);

  return timeline;
};
