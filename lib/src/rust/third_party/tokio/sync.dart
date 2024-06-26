// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.40.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../../lib.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These types are ignored because they are not used by any `pub` functions: `OwnedRwLockMappedWriteGuard`, `OwnedRwLockReadGuard`, `OwnedRwLockWriteGuard`, `RwLockMappedWriteGuard`, `RwLockReadGuard`, `RwLockWriteGuard`, `RwLock`

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Notify>>
abstract class Notify implements RustOpaqueInterface {
  /// Create a new `Notify`, initialized without a permit.
  ///
  /// When using the `tracing` [unstable feature], a `Notify` created with
  /// `const_new` will not be instrumented. As such, it will not be visible
  /// in [`tokio-console`]. Instead, [`Notify::new`] should be used to create
  /// an instrumented object if that is needed.
  ///
  /// # Examples
  ///
  /// ```
  /// use tokio::sync::Notify;
  ///
  /// static NOTIFY: Notify = Notify::const_new();
  /// ```
  ///
  /// [`tokio-console`]: https://github.com/tokio-rs/console
  /// [unstable feature]: crate#unstable-features
  static Future<Notify> constNew() =>
      RustLib.instance.api.tokioSyncNotifyConstNew();

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  /// Create a new `Notify`, initialized without a permit.
  ///
  /// # Examples
  ///
  /// ```
  /// use tokio::sync::Notify;
  ///
  /// let notify = Notify::new();
  /// ```
  static Future<Notify> newInstance() =>
      RustLib.instance.api.tokioSyncNotifyNew();

  /// Wait for a notification.
  ///
  /// Equivalent to:
  ///
  /// ```ignore
  /// async fn notified(&self);
  /// ```
  ///
  /// Each `Notify` value holds a single permit. If a permit is available from
  /// an earlier call to [`notify_one()`], then `notified().await` will complete
  /// immediately, consuming that permit. Otherwise, `notified().await` waits
  /// for a permit to be made available by the next call to `notify_one()`.
  ///
  /// The `Notified` future is not guaranteed to receive wakeups from calls to
  /// `notify_one()` if it has not yet been polled. See the documentation for
  /// [`Notified::enable()`] for more details.
  ///
  /// The `Notified` future is guaranteed to receive wakeups from
  /// `notify_waiters()` as soon as it has been created, even if it has not
  /// yet been polled.
  ///
  /// [`notify_one()`]: Notify::notify_one
  /// [`Notified::enable()`]: Notified::enable
  ///
  /// # Cancel safety
  ///
  /// This method uses a queue to fairly distribute notifications in the order
  /// they were requested. Cancelling a call to `notified` makes you lose your
  /// place in the queue.
  ///
  /// # Examples
  ///
  /// ```
  /// use tokio::sync::Notify;
  /// use std::sync::Arc;
  ///
  /// #[tokio::main]
  /// async fn main() {
  ///     let notify = Arc::new(Notify::new());
  ///     let notify2 = notify.clone();
  ///
  ///     tokio::spawn(async move {
  ///         notify2.notified().await;
  ///         println!("received notification");
  ///     });
  ///
  ///     println!("sending notification");
  ///     notify.notify_one();
  /// }
  /// ```
  Future<Notified> notified();

  /// Notifies the last waiting task.
  ///
  /// This function behaves similar to `notify_one`. The only difference is that it wakes
  /// the most recently added waiter instead of the oldest waiter.
  ///
  /// Check the [`notify_one()`] documentation for more info and
  /// examples.
  ///
  /// [`notify_one()`]: Notify::notify_one
  Future<void> notifyLast();

  /// Notifies the first waiting task.
  ///
  /// If a task is currently waiting, that task is notified. Otherwise, a
  /// permit is stored in this `Notify` value and the **next** call to
  /// [`notified().await`] will complete immediately consuming the permit made
  /// available by this call to `notify_one()`.
  ///
  /// At most one permit may be stored by `Notify`. Many sequential calls to
  /// `notify_one` will result in a single permit being stored. The next call to
  /// `notified().await` will complete immediately, but the one after that
  /// will wait.
  ///
  /// [`notified().await`]: Notify::notified()
  ///
  /// # Examples
  ///
  /// ```
  /// use tokio::sync::Notify;
  /// use std::sync::Arc;
  ///
  /// #[tokio::main]
  /// async fn main() {
  ///     let notify = Arc::new(Notify::new());
  ///     let notify2 = notify.clone();
  ///
  ///     tokio::spawn(async move {
  ///         notify2.notified().await;
  ///         println!("received notification");
  ///     });
  ///
  ///     println!("sending notification");
  ///     notify.notify_one();
  /// }
  /// ```
  Future<void> notifyOne();

  /// Notifies all waiting tasks.
  ///
  /// If a task is currently waiting, that task is notified. Unlike with
  /// `notify_one()`, no permit is stored to be used by the next call to
  /// `notified().await`. The purpose of this method is to notify all
  /// already registered waiters. Registering for notification is done by
  /// acquiring an instance of the `Notified` future via calling `notified()`.
  ///
  /// # Examples
  ///
  /// ```
  /// use tokio::sync::Notify;
  /// use std::sync::Arc;
  ///
  /// #[tokio::main]
  /// async fn main() {
  ///     let notify = Arc::new(Notify::new());
  ///     let notify2 = notify.clone();
  ///
  ///     let notified1 = notify.notified();
  ///     let notified2 = notify.notified();
  ///
  ///     let handle = tokio::spawn(async move {
  ///         println!("sending notifications");
  ///         notify2.notify_waiters();
  ///     });
  ///
  ///     notified1.await;
  ///     notified2.await;
  ///     println!("received notifications");
  /// }
  /// ```
  Future<void> notifyWaiters();
}
