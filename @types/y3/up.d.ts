declare type Callback = () => void;

declare interface UP {
  game: {
    event (EventKey: string, callback: Callback): void;
  }
}

declare var up: UP;