Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D11A5CBD8D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 12:40:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA7553F9D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 11:40:26 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	by lists.linaro.org (Postfix) with ESMTPS id C37783F78A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 11:39:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=keAI8T8W;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.210.180 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7f0db5700b2so2938250b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 03:39:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765798753; x=1766403553; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lORwJoeOdmqWvp6Gaq9g1tKkad6KEP5mAC3mejLEu6E=;
        b=keAI8T8W5R31aLDLcC1YRYsYpZvkuB8GhcQS8zxYtvouGZES2SqbuheNz7JVwldPAK
         35xf2FaBR8gng/We6vtWLnotCjZFuB5Ss6NHOh49H3CH9JTzxSI6zLJvhWOYEorDxgZi
         UzDVW05X3FIpRf+wiL1NzFq86XEF9RJfI5AbGfYNyKtqeDd0NG+n8rjOkfL2TNWRwOMp
         B9TaZSvW8rMDolS33x72oNhec0ZrHu2FwdSM3jlbheVUIjLRcEiHQqCmh4bUJGvetZnJ
         qXGKMMNH2Bo0akwlcynKZLelXIaVIr4WlsXbvpZiAG9Xu8BOEh4La4KUT0ZT2sWhNKHm
         4owQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765798753; x=1766403553;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lORwJoeOdmqWvp6Gaq9g1tKkad6KEP5mAC3mejLEu6E=;
        b=OT7GWrJ2n88ngg0tOOua54UPpH/7piPs4PTkEpRMGSnxgiP+xx7U+P6HArG8RVrxTF
         UUv/ulR8jVLSJhV0J+Qd8JW32ZznSncbpNZXB34v5pZ5bn7fPwVLO60S14qCEWhiD7lq
         jCdDBqLOj7l901+k1JazJhauDSjecpQv6o6kWbzElGpIfVK4Gsn4whKVEn9GnZUj4YkU
         Lfy5KGXoBRAiYKvqWFt9ThF7o7w0MBs+wMPL3v5RJDAsAlZFkXcW10Ga82Lqqs9tMo7C
         9v4syj7hUESx+UHW/oac+gCdbW1c7xwS+7KWteH23RZy7aV9VLjBu8rvvndSNVVQSAH6
         yWxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVP0FPqhfWCujNOBbyPA3EOT4baluk+2RLhvjTuViJZhLjMTh+qWl/3EjnRXObba4+M1UpuM85VsrQrCTfM@lists.linaro.org
X-Gm-Message-State: AOJu0Yyo2y3JuBZPcFPoPJJv6TUVfZYpnjwJirlJfnAnJjxA5OeTUSfK
	mLZGTVBTzaJRTrVeIgKR0XmtpNQGGFsJ38PiR/bmLHBAtile2E+EKKyY
X-Gm-Gg: AY/fxX7CPb1CA9grDL2t6oxVwjJf9FKGDMbutDFqImGlZQIMQxaPABM/MChPgZnNuBD
	GSncXPMsTZ0R3535Y79BucMxnkqzG63RpyXXFV9uOT6zKEEZxjweD1jHTO8Axl26m79Y7DCGZIO
	BqPTAbomFKUtTsd4GVvgfAPYYNlfF4up8Xw6E+JzQaXcDmxVXzT5hS/6rT+LFNO0phyHTxKY4Qm
	7IGnkA+cQKd2od8QiT0tzk56uRkAO0P0hAiefo5xZ/NNlwPX5J5c32XmvX8xkKsQkC0MS1gVZDQ
	5fR0EtwmxSHqEk8sqjuP+c0aTBIbwm3clMrGqaN9K3Wo9GmMNiyGLJ3x0wf0CzR9v05scjgYBEN
	QzIypGsNq1JvAmA2Q5Fewu4BLHmGWzhvee6nBRuwtxj8vqSuULD30OeN3nVV18ntf24xh5es6Av
	/Vm8PWaMebGjw=
X-Google-Smtp-Source: AGHT+IH43ZxDlO+sXZpKsRY9ws0CLb4ZSMlMGi8iin8W4Uc9EL2/AE6hhR6bEKC++ztievLapVcsEA==
X-Received: by 2002:a05:6a20:6a28:b0:364:387:8f4e with SMTP id adf61e73a8af0-369ae490337mr10620715637.34.1765798752795;
        Mon, 15 Dec 2025 03:39:12 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c0c2ae4e3casm12755809a12.21.2025.12.15.03.39.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 03:39:12 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id 811FA444B394; Mon, 15 Dec 2025 18:39:06 +0700 (WIB)
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux AMDGPU <amd-gfx@lists.freedesktop.org>,
	Linux DRI Development <dri-devel@lists.freedesktop.org>,
	Linux Filesystems Development <linux-fsdevel@vger.kernel.org>,
	Linux Media <linux-media@vger.kernel.org>,
	linaro-mm-sig@lists.linaro.org,
	kasan-dev@googlegroups.com,
	Linux Virtualization <virtualization@lists.linux.dev>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Linux Network Bridge <bridge@lists.linux.dev>,
	Linux Networking <netdev@vger.kernel.org>
Date: Mon, 15 Dec 2025 18:38:53 +0700
Message-ID: <20251215113903.46555-6-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251215113903.46555-1-bagasdotme@gmail.com>
References: <20251215113903.46555-1-bagasdotme@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=849; i=bagasdotme@gmail.com; h=from:subject; bh=mcnZ1soLgF/JTT1YuxC/XOQhVy9SZYDoshinxHejwDU=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDJn2n4P0Tdf6vI2dt8iwUrrPLU6ToytxCmtRXso3wY/50 fGG9Ws6SlkYxLgYZMUUWSYl8jWd3mUkcqF9rSPMHFYmkCEMXJwCMBHZKwz/nVbIB4ee2zunpOHQ vBz35Ga7xwYL3V6/ES+tt/jmsMTsOCPDXNsiGd24sMjVrB9Z5rD2NZvPm8/+bp/rS8/i2IdH8rc yAgA=
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp; fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.180:from];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_GT_50(0.00)[86];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,zeniv.linux.org.uk,suse.cz,linaro.org,google.com,redhat.com,linux.alibaba.com,linux-foundation.org,blackwall.org,nvidia.com,davemloft.net,infradead.org,oracle.com,ionos.com,linux.ibm.com,arm.com,linux.dev,konsulko.se,brown.name,collabora.com,cumulusnetworks.com,208suo.com,cdjrlc.com,inspur.com,gvernon.com];
	BLOCKLISTDE_FAIL(0.00)[209.85.210.180:server fail];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C37783F78A
X-Spamd-Bar: --
Message-ID-Hash: 3QNWMJL2JP2CQOEBKC2RL2LHY7BISPEQ
X-Message-ID-Hash: 3QNWMJL2JP2CQOEBKC2RL2LHY7BISPEQ
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, =?UTF-8?q?Eugenio=20P=C3=A9rez?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.c
 om>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George Shen <george.shen@amd.com>, Aric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, Bagas Sanjaya <bagasdotme@gmail.com>, David Hildenbrand <david@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>,
  Vlastimil Babka <vbabka@suse.cz>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Luben Tuikov <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 05/14] mm, kfence: Describe @slab parameter in __kfence_obj_info()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3QNWMJL2JP2CQOEBKC2RL2LHY7BISPEQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sphinx reports kernel-doc warning:

WARNING: ./include/linux/kfence.h:220 function parameter 'slab' not described in '__kfence_obj_info'

Fix it by describing @slab parameter.

Fixes: 2dfe63e61cc31e ("mm, kfence: support kmem_dump_obj() for KFENCE objects")
Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 include/linux/kfence.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/kfence.h b/include/linux/kfence.h
index 0ad1ddbb8b996a..e5822f6e7f2794 100644
--- a/include/linux/kfence.h
+++ b/include/linux/kfence.h
@@ -211,6 +211,7 @@ struct kmem_obj_info;
  * __kfence_obj_info() - fill kmem_obj_info struct
  * @kpp: kmem_obj_info to be filled
  * @object: the object
+ * @slab: the slab
  *
  * Return:
  * * false - not a KFENCE object
-- 
An old man doll... just what I always wanted! - Clara

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
