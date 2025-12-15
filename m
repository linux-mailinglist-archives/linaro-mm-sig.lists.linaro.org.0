Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A38CBD914
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 12:41:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD0EB40161
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 11:41:51 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by lists.linaro.org (Postfix) with ESMTPS id 503813F9B1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 11:39:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="dLeD/E2P";
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.216.47 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-34c708702dfso1110380a91.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 03:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765798763; x=1766403563; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KFsNe5Gu995f8GfU2RxaYzwbXM91ZCVhfkD06BV90tM=;
        b=dLeD/E2PZUQX1+rubUKbA99Q9FSRSsAI4Ry7iVQ4PXoKp64VMHrJvZHBwj5OKHk8rg
         QhPnDmkelFzXFyYDS2vqxp8gTLaBpjXv/nasUODhV6MIqqTM8ClBzV9aQsbna0O/v77H
         fZziPtYeA0HTf4uNqQaI/KsfP0j4SyD5xLnCkXzJiIzluJwh4dQ2QVmAdTv0DBp3nkUL
         CIt4W2Ik3VU0ZmPyNwitkW0LysvazD5gFy+rZu6PvmbTVqA7SZi5q8DloZIOlMinZWBI
         yEeaOBNTcuxfXYE6ZH2hsmZWS6qP29G15OyKrWV+Jpxg8w0XvRHKM4WAQ5JdY82WI5DH
         r6uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765798763; x=1766403563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KFsNe5Gu995f8GfU2RxaYzwbXM91ZCVhfkD06BV90tM=;
        b=fdeqqucANiWhyZ1kYLZShkTpeZC+bKm+TMcy7GFANh6HAfO3UMsSUszU+UDmxLfVaX
         X1eqcwJWaCNF0Epwi/nqEwr7IZEjOgudWAX+rnwln4qHf/rvlhI/fz+Dqg4dcVWeth7j
         vAjkashNeRCyHLDM4i2ROYVln41/0V1Nj3g3ka0n7L5IhAdl3dcnHByJhc53OG2bzfn1
         r5dYIIXVsvv1CPaxEEGUE5aQwYS/KeEb+dsLzyf9VB5nD7OrkH+qtTyyrWeG+0ZvpVtV
         AQTr82638QowOj96XVN5uJQtUk6vuOW4eoDYNpT7T0ogkvrXr24sZ5uphFkwxgWoMCcS
         O+1g==
X-Forwarded-Encrypted: i=1; AJvYcCXTvI+/KBwi8dd1Y0OCfvb7cdjWuF2yb7op4fwRvX9MFMCgHdsRZGcwSt3U3BoBVUOuBO+m/oTUNqBrQ5+J@lists.linaro.org
X-Gm-Message-State: AOJu0YwrBl6Ea4/569itR3FkxishlcJINf3AidWRUhaNMnj0DA/11uEN
	gz6Q2UWNrVmDScwMkwAPfAP9mSxkfIpIDDD94+nbnOBVzxF9YXE0zjMs
X-Gm-Gg: AY/fxX7b8GISH34QhTOjK2xa+o3qNT6yOE0jHaDMcEjMw4yacSURvW1309gSEYxdLWR
	2jKnw7dSaablErF28D2nUU7zFs6w8Ll569q0JTzw22nV8dMg6M28WwmfDgO8rMdNrLrtaRs4DN+
	VU8cUjKHMiMs6tUkH+KjJZBibOJCSjZwCqvhtVhkrP+5Wxt8MDP6XkEXOCRUt6lIBpu8sZELZA5
	y6gokcBLYiaoCfRUFSLzHdD24jSPTXZ0Ew37pGleKWvotTcRaJQA4tJIaCePWLLdjyhd9K4WQ9v
	YcM6/8vLux0dWwVE0OM5WhktEqJZfdpup2FLXesQMRNyJZaNgWTUNYAuwDdFesjS10yRG2z0qQC
	OgGnRl2Ee9h8/ZnOnHxS8m4EmN0uCulhOa4go4PK5V93wc28YiGEY0Y8QJfAjkZMCJa+F52/kIb
	5uagBaQVhCNfg=
X-Google-Smtp-Source: AGHT+IEy2tcNugFFoZ/L1b/kwWL3FdgAjYD+lvIJBPYKZMY6hs2UzwV9S1AhT0ES6IDo2vtVEhI5ug==
X-Received: by 2002:a17:90b:2811:b0:340:bb51:17eb with SMTP id 98e67ed59e1d1-34abd6d35c0mr9572904a91.15.1765798763360;
        Mon, 15 Dec 2025 03:39:23 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34abe2f34c7sm2908684a91.9.2025.12.15.03.39.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 03:39:18 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id CA7C1444B397; Mon, 15 Dec 2025 18:39:06 +0700 (WIB)
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
Date: Mon, 15 Dec 2025 18:38:56 +0700
Message-ID: <20251215113903.46555-9-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251215113903.46555-1-bagasdotme@gmail.com>
References: <20251215113903.46555-1-bagasdotme@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1286; i=bagasdotme@gmail.com; h=from:subject; bh=XiWwx/yBvL5qhtur1OJ6r0Qtve5kN/UAKMQDFDv8Kk4=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDJn2n4O3vI8WDrMwXuvBLq8mNivp3ZeuaVYeu+cJXRZ0u 9ehPPdrRykLgxgXg6yYIsukRL6m07uMRC60r3WEmcPKBDKEgYtTACbSG8vI8EpCRPb0s1m/77E2 hv9V7O9IOeS06tfyqjLP7/lK/+xuKjL8zzy7NtZA+f5K8VWm3d9utqf1737naLT7ZsEzs3nvY45 PYQUA
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp; fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.47:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[mail-pj1-f47.google.com:rdns,mail-pj1-f47.google.com:helo];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,zeniv.linux.org.uk,suse.cz,linaro.org,google.com,redhat.com,linux.alibaba.com,linux-foundation.org,blackwall.org,nvidia.com,davemloft.net,infradead.org,oracle.com,ionos.com,linux.ibm.com,arm.com,linux.dev,konsulko.se,brown.name,collabora.com,cumulusnetworks.com,208suo.com,cdjrlc.com,inspur.com,gvernon.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCPT_COUNT_GT_50(0.00)[86];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 503813F9B1
X-Spamd-Bar: --
Message-ID-Hash: 4FQGQ45URZODPZBDOJ5P4ZLNORCXM3VC
X-Message-ID-Hash: 4FQGQ45URZODPZBDOJ5P4ZLNORCXM3VC
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, =?UTF-8?q?Eugenio=20P=C3=A9rez?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.c
 om>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George Shen <george.shen@amd.com>, Aric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, Bagas Sanjaya <bagasdotme@gmail.com>, David Hildenbrand <david@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>,
  Vlastimil Babka <vbabka@suse.cz>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Luben Tuikov <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 08/14] VFS: fix __start_dirop() kernel-doc warnings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4FQGQ45URZODPZBDOJ5P4ZLNORCXM3VC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sphinx report kernel-doc warnings:

WARNING: ./fs/namei.c:2853 function parameter 'state' not described in '__start_dirop'
WARNING: ./fs/namei.c:2853 expecting prototype for start_dirop(). Prototype was for __start_dirop() instead

Fix them up.

Fixes: ff7c4ea11a05c8 ("VFS: add start_creating_killable() and start_removing_killable()")
Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 fs/namei.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/namei.c b/fs/namei.c
index bf0f66f0e9b92c..91fd3a786704e2 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -2836,10 +2836,11 @@ static int filename_parentat(int dfd, struct filename *name,
 }
 
 /**
- * start_dirop - begin a create or remove dirop, performing locking and lookup
+ * __start_dirop - begin a create or remove dirop, performing locking and lookup
  * @parent:       the dentry of the parent in which the operation will occur
  * @name:         a qstr holding the name within that parent
  * @lookup_flags: intent and other lookup flags.
+ * @state:        task state bitmask
  *
  * The lookup is performed and necessary locks are taken so that, on success,
  * the returned dentry can be operated on safely.
-- 
An old man doll... just what I always wanted! - Clara

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
