function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  require(newOwner != owner(), "Ownable: new owner is the same as current owner");
  _transferOwnership(newOwner);
}

function _transferOwnership(newOwner) {
  emit OwnershipTransferred(owner(), newOwner);
  owner_ = newOwner;
}