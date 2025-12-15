Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFB0CBD8F0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 12:41:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE5744014A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 11:41:10 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	by lists.linaro.org (Postfix) with ESMTPS id D668C3F78A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 11:39:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=klBbyAz+;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.210.172 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7bc248dc16aso2715936b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 03:39:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765798759; x=1766403559; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XhdWc9MI61x0CV5VCAtcSDjXy8TDKlNky9k0yGxBSF0=;
        b=klBbyAz+BYRYdLllnO7lnsStOXFYdCgIMGAi8Ob0FpW0VzGOrFl7dEvz4xJWmbS3sX
         9AOr7av8F18PPRCwX+rkJK+qt0kUI424R/pTejAv5BwWar1UF8MCqQ3D1cG/dQCkXeKB
         qV22IwNc8/Gl4Ke0QmGqxwLJTCDEuQcDWlhTaEyIcH44+JarJTI1YeMOqmxmTVsNNhkm
         XxmII+EbwtrqdPiBk787qj55bBtLT1Uis0uNwwkIbpgTQYE9WCvVavNzBM1VrKtTCpLN
         KMT867oVtz9msyCPHLeoF6vDnyfc+0S+KTcAEAN+Zjaz5b+xQRTtcPbhqLPgqiuuTYia
         ew7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765798759; x=1766403559;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XhdWc9MI61x0CV5VCAtcSDjXy8TDKlNky9k0yGxBSF0=;
        b=QqyHSrYe8T61KXtID1keDsO9bxHcGm3q/t2ao62RyzEx19heHxn9/ZCwX8Mc0jqrn2
         xm64lgPfjN3VMtLe3hRdKB+AIIKp6k+91Te52J5JRQzZRNjbBAnpd83lQJbB/Do1X0KR
         sVoK6r3oRDkXxwR5tT/LVvX3KIxyQVTAVnFQSXJCRxHYQy0Vq/Vdsqwa78OBvpmFX4/j
         mecIQhWIWMHYP394ce7H8wIflJj/NGZ8LmOo6JEr9vuBdMJG4W6yCZHIqQ8Mpu9EB3Mi
         0wHJeup++CFqyAdOp1bHMmVvxH3wmzIozkrswYW8U3yoYT+G2EFBJ4crroEboH+Q56kc
         bkGA==
X-Forwarded-Encrypted: i=1; AJvYcCVAXUsZA5spx6H73c55H6Lny36PnC3bOKMD0MApL0XaSSwm+NWIrDrdjh4IYtN5OA+2cZY2OMHJqF0grp9a@lists.linaro.org
X-Gm-Message-State: AOJu0YwPwKilqrwnSwhT6WinAfLrDP2LZka7hrFuRR45UCh4It2CnDNh
	OLJcmKqVIOdMba2euYQ1nYMQFt2W3t2G3DBcD0kV1l5q280vLEZf7zTT
X-Gm-Gg: AY/fxX6zZ5g8kbUuj1TUdeF5EwYc2EqZGh/oQrE3ov2VdRQopQvoBNXs2c05LUAinoL
	sLHnPc6cmn880YygyPWBbdTjElglkuAisunOZ1Go2Q1+wQcZw72otr73LBD8Llc5jL9adL504xX
	LmyAbXq8GiZQTOkdggXscgGjljKp0z/Q6ylN5bl9aV5oUG38pSAdDwfe+35+/WV911gzZSdJfuj
	mZR7VjFVAodExO83JDRZP0y856/DNBX9+AObZxryeXZ9oDWygG9SLlJS9SHUStH3Trh29PHUGER
	umCEF3TGLVF4a1V1GS6AVF7clNNrysmL83DvyG2qU4vSsW74/ObReOdi0oatj2j09nGaF820hUD
	/GK9bK4QLR4lKKY3sFbAa9gYmmRjAkGB7tuWWRXWJSwis1t/Uttya7e+6AOHf8pwo9X0yZo2+DM
	g7AyzItfTx80A=
X-Google-Smtp-Source: AGHT+IEml9qI+VrrnmRfetIj/W3ZZs/y3fpGJeeY3YNSfL1Lp+Ud1G2wHo5sReKCb7zM9fF8T1soPQ==
X-Received: by 2002:a05:6a00:4211:b0:7e8:4587:e8c8 with SMTP id d2e1a72fcca58-7f669c8ea65mr9926386b3a.59.1765798758916;
        Mon, 15 Dec 2025 03:39:18 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7f4c566c7cfsm12487742b3a.67.2025.12.15.03.39.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 03:39:18 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id BCD48444B396; Mon, 15 Dec 2025 18:39:06 +0700 (WIB)
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
Date: Mon, 15 Dec 2025 18:38:55 +0700
Message-ID: <20251215113903.46555-8-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251215113903.46555-1-bagasdotme@gmail.com>
References: <20251215113903.46555-1-bagasdotme@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=946; i=bagasdotme@gmail.com; h=from:subject; bh=ZF9oIk+6VfTU18bKiromuOjnT5V3QoMoKRjEOTmh6aM=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDJn2n4NPZboGqi8J0lGIEPx09J91+O5zYvcmVc9uCnNeq KyqY9/YUcrCIMbFICumyDIpka/p9C4jkQvtax1h5rAygQxh4OIUgIloczEyXFE5FS25V7U4nF3s wsyajN23tv7S0jlgc8jW4LrtPJ7fvYwMd203HZvEp7U3/4W850Q53mn2BsnZf49w2jwWklnFefM GBwA=
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp; fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[mail-pf1-f172.google.com:rdns,mail-pf1-f172.google.com:helo];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCPT_COUNT_GT_50(0.00)[86];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,zeniv.linux.org.uk,suse.cz,linaro.org,google.com,redhat.com,linux.alibaba.com,linux-foundation.org,blackwall.org,nvidia.com,davemloft.net,infradead.org,oracle.com,ionos.com,linux.ibm.com,arm.com,linux.dev,konsulko.se,brown.name,collabora.com,cumulusnetworks.com,208suo.com,cdjrlc.com,inspur.com,gvernon.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.210.172:from];
	BLOCKLISTDE_FAIL(0.00)[209.85.210.172:server fail];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D668C3F78A
X-Spamd-Bar: --
Message-ID-Hash: BHCOUYEDYZFLGTWADA7E2VMPZMQPWK5Q
X-Message-ID-Hash: BHCOUYEDYZFLGTWADA7E2VMPZMQPWK5Q
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, =?UTF-8?q?Eugenio=20P=C3=A9rez?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.c
 om>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George Shen <george.shen@amd.com>, Aric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, Bagas Sanjaya <bagasdotme@gmail.com>, David Hildenbrand <david@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>,
  Vlastimil Babka <vbabka@suse.cz>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Luben Tuikov <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 07/14] fs: Describe @isnew parameter in ilookup5_nowait()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BHCOUYEDYZFLGTWADA7E2VMPZMQPWK5Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sphinx reports kernel-doc warning:

WARNING: ./fs/inode.c:1607 function parameter 'isnew' not described in 'ilookup5_nowait'

Describe the parameter.

Fixes: a27628f4363435 ("fs: rework I_NEW handling to operate without fences")
Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 fs/inode.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/inode.c b/fs/inode.c
index 521383223d8a45..2f4beda7bb8841 100644
--- a/fs/inode.c
+++ b/fs/inode.c
@@ -1593,6 +1593,7 @@ EXPORT_SYMBOL(igrab);
  * @hashval:	hash value (usually inode number) to search for
  * @test:	callback used for comparisons between inodes
  * @data:	opaque data pointer to pass to @test
+ * @isnew:	whether the inode is new or not
  *
  * Search for the inode specified by @hashval and @data in the inode cache.
  * If the inode is in the cache, the inode is returned with an incremented
-- 
An old man doll... just what I always wanted! - Clara

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
