export function randomSizes(within: number, goals: number[], variance = 0.2) {
  const wanted = within;
  const options: number[] = [];

  while (within > 0) {
    const goal = randomChoice(goals)!;

    if (within < goal * (1.0 - variance)) {
      break;
    }

    const v = randomVariance(variance);
    let target = Math.round(goal * v);
    if (target > within) {
      target = within;
    }

    within -= target;

    options.push(target);
  }

  if (within < 0) {
    throw new Error(`used too much`);
  }

  if (options.length === 0) {
    options.push(wanted);
    within = 0;
  }

  while (within > 0) {
    const choice = randomInt(options.length);
    options[choice]++;
    within--;
  }

  options.sort(() => Math.random() - 0.5);

  const total = options.reduce((a, b) => a + b, 0);
  if (total !== wanted) {
    throw new Error(`calc invalid: size=${total} wanted=${wanted}`);
  }

  return options;
}

export function randomChoice<T>(arr: T[]) {
  const index = Math.floor(Math.random() * arr.length);
  return arr[index];
}

export function randomRange(low: number, high: number = 0) {
  const range = high - low;
  return low + Math.random() * range;
}

export function randomVariance(variance: number, mid = 1.0) {
  return randomRange(mid - variance, mid + variance);
}

export function randomInt(low: number) {
  return Math.floor(Math.random() * low);
}
