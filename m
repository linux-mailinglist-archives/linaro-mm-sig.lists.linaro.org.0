Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C48895E838C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Sep 2022 22:28:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 047E53F950
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Sep 2022 20:28:58 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	by lists.linaro.org (Postfix) with ESMTPS id 2882F3F955
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 20:28:30 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id q3so1063988pjg.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 13:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=G7kCAYdmee+RZ/2FVUhmFmKba16DTFtB/qncTXfqL0g=;
        b=Y6E7L9J9UR374oBO9JTlj0UyLXz47O6O/vrwsT4xNx7MOToGuF3Haek94epLF2gKFc
         YHBgJXmOtfririgUsUdUJ7cJUEJhj34PvSPp7NewDy4HIxUbfstnz0HwtTKsvV+jUdM9
         ewYTBmIsL92mb0z3umh2K5ZPB3wBhsrYJr07w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=G7kCAYdmee+RZ/2FVUhmFmKba16DTFtB/qncTXfqL0g=;
        b=Le/QoeEreeGnMsbex0TuclTyJv0maquSo63M1z8PR2uaC9pSDHYoCkA7Z9LFZ6G0hA
         zjkzArXCA1J6w3jhOeaycOzm3trqEI7AH9jXvIFecfglVDJTDktKuyfzdhLpFNts9RYN
         jhdMIo1bB4pH8ZcL3scNUdMe5XrzgBdcBtse0IwCeAOkQDSyQWE6DPzU6/VLAubVTRsc
         WqKQKoMfgxYEGz4MU+iuewkP3rEDouJQ3MqaCaE0Oram9hvlMg7rAHYwrUsSnvElLDkm
         oPgPmuY9tWXJJtOseBMKQbjJMZKUri3/V4RJ8QTx/Sp1zkSMyb/xDdsyeqLgbI3pL1qp
         ls3A==
X-Gm-Message-State: ACrzQf1vGzgD1DCRbKc7kLdCQoxDvEQDtfubowP4tZHrrDBO4jhzxgNt
	fODs3xGo0JJnvzG0puW8KuYe/g==
X-Google-Smtp-Source: AMsMyM4OIH2Kbz3W/dS5nJOpu2wzufZOda+7SbBQGOF/tLPl7Mw1AUJglcwrNduXNP5ZLvyQaDEecg==
X-Received: by 2002:a17:90b:1942:b0:202:cf66:f37f with SMTP id nk2-20020a17090b194200b00202cf66f37fmr22638049pjb.15.1663964909318;
        Fri, 23 Sep 2022 13:28:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z12-20020a6553cc000000b0041d6d37deb5sm6016364pgr.81.2022.09.23.13.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 13:28:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:12 -0700
Message-Id: <20220923202822.2667581-7-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1691; h=from:subject; bh=laYkgTmsp2Dcg0WHHOT6ZPL9V6mSc2dOwctf45ZQYvY=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbkDJzHnX+sI3Vo1Qv14V482wiYBuOHMxTmnIBU huucnceJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5AAKCRCJcvTf3G3AJiyLEA CGMES+fC6ye1bGeS3O38IPkN3IQzERShfic80XY4a30XyimxkLkJSmvXpj+ewPNbHKoiUJTxKgZb/K XnxJDpvuDtFtz8bmbN5m2Yd+S7u9U0FJix4D0Bjc65bO2BLZ1p4skZ00ujWbdyLS1BgmyosrJ9xVP9 Jeb1iFSNfgRZVKqrPKkicjNZr+6mjZxTYoH7c+LPVPfoyyMsulrIGhvF9VSVGvkUMxknLO8TmnWGGL YXw+DzIp3KOAD7McaSE+ctkuIt/4FqAoG9rJOaNF0THgqKo9qaiN3ta16/oNWQocOWuZiKKVTKaDQl ec8EwXmI83Hw0xcmg1Pk7Nyaa5u6CNYuOr6/QPIyHM/G9zTOgaQKJDjVdTfOWZueQU0z56sMQd76h2 EgoHovJDkExXKzaR3tSExdysEeji5cAz5MTF6B5PhevY//J2SrfmsF3Umuqd3PdQ8Z+4FkekBNeaIt Wpzdj496etMeazF2E/aottRll8HUp1QXtMIraqM7WAgkIUg557ze4RTKXXeQvpWrgT6a464S9QSBKF D28gqdBRRs+c1X8XxNNTSpIWgjw0U1bUDku7eV4GRnqprMwn16uXdgttSoB7bVSJibtA6uv2jYfhpW HJE8ECmRl+W/2kM5Fz/2+NW1rofopoBc5f5LUPED2ZPHjOI5nqOO7GaJaF1w==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Message-ID-Hash: Q3PLFCTMLEK3JD3AGMVGWN5H577NDBL6
X-Message-ID-Hash: Q3PLFCTMLEK3JD3AGMVGWN5H577NDBL6
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Mig
 uel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 06/16] igb: Proactively round up to kmalloc bucket size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q3PLFCTMLEK3JD3AGMVGWN5H577NDBL6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In preparation for removing the "silently change allocation size"
users of ksize(), explicitly round up all q_vector allocations so that
allocations can be correctly compared to ksize().

Additionally fix potential use-after-free in the case of new allocation
failure: only free memory if the replacement allocation succeeds.

Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 2796e81d2726..eb51e531c096 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1195,15 +1195,16 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
 		return -ENOMEM;
 
 	ring_count = txr_count + rxr_count;
-	size = struct_size(q_vector, ring, ring_count);
+	size = kmalloc_size_roundup(struct_size(q_vector, ring, ring_count));
 
 	/* allocate q_vector and rings */
 	q_vector = adapter->q_vector[v_idx];
 	if (!q_vector) {
 		q_vector = kzalloc(size, GFP_KERNEL);
 	} else if (size > ksize(q_vector)) {
-		kfree_rcu(q_vector, rcu);
 		q_vector = kzalloc(size, GFP_KERNEL);
+		if (q_vector)
+			kfree_rcu(q_vector, rcu);
 	} else {
 		memset(q_vector, 0, size);
 	}
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
