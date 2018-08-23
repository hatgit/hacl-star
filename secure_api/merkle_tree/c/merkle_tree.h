#include "stdint.h"

// TODO: should instantiate all `extern`s
extern hash_t;
extern merkle_tree;
extern signed_hash;

typedef merkle_tree *mt_ptr;

/// Construction and destruction (free)
mt_ptr create_mt();
void free_mt(mt_ptr mt);

/// Insertion
void mt_insert(mt_ptr mt, hash_t v);

/** Getting the Merkle root
 * @param[out] root The merkle root returned as a hash pointer
 */
void mt_get_root(mt_ptr mt, hash_t root);

/** Getting the Merkle path
 * @param idx The index of the target hash
 * @param[out] root A signed root by the server
 * @param[out] path A resulting Merkle path that contains the leaf hash
 * @return The maximum index + 1. This number represents the depth of `path`.
 */
uint32_t mt_get_path(mt_ptr mt, uint32_t idx, signed_hash root, hash_t *path);

void mt_flush(mt_ptr mt);
void mt_flush_to(mt_ptr mt, uint32_t idx);

/** Client-side verification
 * @param k The index of the target hash
 * @param j The maximum index + 1 of the tree when the path is generated
 */
bool mt_verify(uint32_t k, uint32_t j, hash_t *path, signed_hash root);