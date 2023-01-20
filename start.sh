#!/bin/bash

tiup playground ${TIDB_VERSION} --host 0.0.0.0 --db ${USE_DB} --pd ${USE_PD} --kv ${USE_KV} --db.host 0.0.0.0 --pd.host 0.0.0.0 --tiflash 0
