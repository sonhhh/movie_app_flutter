part of 'detail_cubit.dart';

class DetailInitial extends Equatable {
  bool isExpanded;
  bool isLoading;
final String? id;
  bool isLoadingUser;
  ListCart? listcart = ListCart();
  User? user = User();

  DetailInitial(
      {this.isExpanded = false,
      this.isLoading = true,
      this.isLoadingUser = true,
      this.listcart,
      this.user,
        this.id, });

  DetailInitial copyWith(
      {
        final String? id,
        bool? isExpanded,
      bool? isLoading,
      bool? isLoadingUser,
      ListCart? listcart,
      User? user}) {
    return DetailInitial(
        id: id ?? this.id,
        isExpanded: isExpanded ?? this.isExpanded,
        isLoading: isLoading ?? this.isLoading,
        isLoadingUser: isLoadingUser ?? this.isLoadingUser,
        listcart: listcart ?? this.listcart,
        user: user ?? this.user);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id,isExpanded,isLoading,isLoadingUser,listcart, user];
}
