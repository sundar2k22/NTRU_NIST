
# CC=/usr/bin/cc
# LDFLAGS=-lcrypto
# CFLAGS = -DCRYPTO_NAMESPACE\(s\)=ntru_\#\#s

# SOURCES = cmov.c fips202.c kem.c owcpa.c pack3.c packq.c poly.c poly_lift.c poly_mod.c poly_r2_inv.c poly_rq_mul.c poly_s3_inv.c PQCgenKAT_kem.c rng.c sample.c sample_iid.c
# HEADERS = api_bytes.h api.h cmov.h crypto_hash_sha3256.h fips202.h kem.h owcpa.h params.h poly.h rng.h sample.h

# PQCgenKAT_kem: $(HEADERS) $(SOURCES)
# 	$(CC) -DCRYPTO_NAMESPACE\(s\)=ntru_\#\#s -o $@ $(SOURCES) $(LDFLAGS)

# .PHONY: clean

# clean:
# 	-rm PQCgenKAT_kem
CC=/usr/bin/cc
OPENSSL_PATH=/opt/homebrew/opt/openssl@3
LDFLAGS=-L$(OPENSSL_PATH)/lib -lcrypto
CFLAGS=-I$(OPENSSL_PATH)/include -DCRYPTO_NAMESPACE\(s\)=ntru_\#\#s

SOURCES=cmov.c fips202.c kem.c owcpa.c pack3.c packq.c poly.c poly_lift.c poly_mod.c poly_r2_inv.c poly_rq_mul.c poly_s3_inv.c PQCgenKAT_kem.c rng.c sample.c sample_iid.c
HEADERS=api_bytes.h api.h cmov.h crypto_hash_sha3256.h fips202.h kem.h owcpa.h params.h poly.h rng.h sample.h

PQCgenKAT_kem: $(HEADERS) $(SOURCES)
	$(CC) $(CFLAGS) -o $@ $(SOURCES) $(LDFLAGS)

.PHONY: clean

clean:
	-rm -f PQCgenKAT_kem