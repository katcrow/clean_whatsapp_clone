part of 'firebase_crud_bloc.dart';

abstract class FirebaseCrudEvent extends Equatable {
  const FirebaseCrudEvent();
}

class CreateDataEvent extends FirebaseCrudEvent {
  final User user;

  const CreateDataEvent(this.user);
  @override
  List<Object?> get props => [user];
}

class ReadDataEvent extends FirebaseCrudEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoadDataEvent extends FirebaseCrudEvent {
  final List<User> users;

  const LoadDataEvent(this.users);
  @override
  List<Object?> get props => [users];
}

class UpdateDataEvent extends FirebaseCrudEvent {
  final User user;

  const UpdateDataEvent(this.user);
  @override
  List<Object?> get props => [user];
}

class DeleteDataEvent extends FirebaseCrudEvent {
  final String id;

  const DeleteDataEvent(this.id);
  @override
  List<Object?> get props => [id];
}
