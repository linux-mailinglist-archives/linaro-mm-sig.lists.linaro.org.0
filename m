Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 41365CBD8B1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 12:39:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BA4140105
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 11:39:41 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by lists.linaro.org (Postfix) with ESMTPS id D18103F907
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 11:39:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=XYMRa8hu;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.216.44 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-34abc7da414so2225246a91.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 03:39:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765798750; x=1766403550; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rTcY4k7PJNNctnILuEp0lcvqj1X2scOTc/Z894ZNYfE=;
        b=XYMRa8huvH0zDVf3RF2CbQzZrpvm2GTzSn+7dXrWJu9nYGvRpZFaJe/DZKroA9N3gq
         /kbBgUltx/Mvbeb3QqYr2mOKoUQ//r5pLSz2RrxvQvXgTKg+LQKyyytSj5cmthdJGJqs
         EsuxvjHSpOYvzmZhKmqOg2IoqKOpKnMwRFiWFxklXF3jWJaIEdF8ONt6lps3R546Eviu
         qR0+tlqU9og7idcDUNtvPO2C61Lva5eEGsxlK2QCMAdUjPeXp6CePRMVzBkEL1EoZ8yx
         7VCAuXDMlbwlnfgFMQfmCcii0ibHaclr7srerKlHAMmu2mUASxKiUr9FD0dLb75q8R40
         ef9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765798750; x=1766403550;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rTcY4k7PJNNctnILuEp0lcvqj1X2scOTc/Z894ZNYfE=;
        b=G24+Vcfe1gk26fyQLx25GgjTVqhLpRw1bfqkt3kuVBI2c35QrTpzqeLFdfgI7hLyFh
         9nDqJC8v6U56pdd373YCYNBw/DCE7Zpy8cXX/OfwbNECSnQ52m1w7GQPgHTEs6n3kb2q
         m26zAvkgn5nzbNlbJ03AyNLF6/MhFkKDnRIr03aJl3mUoYsmSHb4f1TsaDgjSUQlWVxS
         WHkGUjypmIcAOt4Ni95J/7NeftI8LgjubklV5QW1zs76teNy/9bYeNz1lJlQ6ehks5vc
         /Tm38t657IDRxZSSGFYMwEDSVL9Qr/ZCW6C7LV6RoTB6E30qqazk4S4w/bb6ESLw9GM5
         smlw==
X-Forwarded-Encrypted: i=1; AJvYcCVI3fRuEq4gHDFmXC7OKvQLERb3ln+g2dk7y3v0Obwu36Nud9uJQI9AdKlSp4XmS1NP3TcDgMvNuBYXQ+xo@lists.linaro.org
X-Gm-Message-State: AOJu0YynAd05kayAhqtMCRjp6/jlXU3o9NuH4NiYZYgCZ1hXCvmgLp+R
	KdQAXR5lZSApYDKLpsIJDdSkJvknGuMXloiZv3ynHuVzvOpfP7T+5OED
X-Gm-Gg: AY/fxX6TnSd1IOnIXX43KbpMk+mfVDGC0iodd2GmYu3KgywzLCCBmqFLrV6PbUeBVED
	dQUOsKkVJkkXyX7a0gLPJCrSj4QKFsrs8kxQ+dQGx1oL3BJJQKAuccqWu0xcr0B8Jxtmst2c+9v
	0sAgKCJrop3svSbP1TYTEDLulqXT4cbkB5LbP6AID0BTAWaKgj0CnpNvxLMIwkuX3TS7oNcPm6C
	eSkegJjma960qBS7LPk2YZz/mIb4j28+dGuce6oihWOJFg3Onki7PFQhlECD4IwprN4vFKfnD8k
	s9gtW526NGOEhH39xN8p1LKnk/rSzLeJvJww2Vsx3gm6KmSIFWvuPdE3yNuu2ovFFRqldFbbvv/
	rPQK31dJGSFedSYUT6VFsSKEPwmaH5jnUaVoRGn4cuc28MMaFqUHz1TIPuUlz2Nh2Wlb4DTA8Yr
	34QYq3pSX5u8eIlmtYzXvkFA==
X-Google-Smtp-Source: AGHT+IH7Y0ZP0SVYlRqXrzHx+fOVv/+/V5Bjimjq/e2I+okG90jQDlqbjW8VY0Em0JiciGGZ262G7g==
X-Received: by 2002:a17:902:c402:b0:295:c2e7:7199 with SMTP id d9443c01a7336-29f23c7b8b9mr114062105ad.29.1765798749863;
        Mon, 15 Dec 2025 03:39:09 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9b3850csm133386495ad.17.2025.12.15.03.39.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 03:39:08 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id AC75C444B38F; Mon, 15 Dec 2025 18:39:05 +0700 (WIB)
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
Date: Mon, 15 Dec 2025 18:38:48 +0700
Message-ID: <20251215113903.46555-1-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2064; i=bagasdotme@gmail.com; h=from:subject; bh=zPsruu4atyDYOaQCsKIEqnFkDKfYqb53HHp2txNqt3A=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDJn2n4MMm/867RRu9s/LeXucS+TRacFsjy3x8goRK//G7 Jyfu8O1o5SFQYyLQVZMkWVSIl/T6V1GIhfa1zrCzGFlAhnCwMUpABOJ+cjwP9rl0j2O1i3mgnEF j0tV/6z5nLTvdKmsJY/NvB286XtLTzEy7D+8+dTHe63Sb6bPXnHWT1NH5vPMzba75Xe45yw3OaR ZzAUA
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp; fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.44:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,zeniv.linux.org.uk,suse.cz,linaro.org,google.com,redhat.com,linux.alibaba.com,linux-foundation.org,blackwall.org,nvidia.com,davemloft.net,infradead.org,oracle.com,ionos.com,linux.ibm.com,arm.com,linux.dev,konsulko.se,brown.name,collabora.com,cumulusnetworks.com,208suo.com,cdjrlc.com,inspur.com,gvernon.com];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[86];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D18103F907
X-Spamd-Bar: --
Message-ID-Hash: ONC57BPML2NYJS5Q72JJNG4BFVHRNHHX
X-Message-ID-Hash: ONC57BPML2NYJS5Q72JJNG4BFVHRNHHX
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, =?UTF-8?q?Eugenio=20P=C3=A9rez?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.c
 om>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George Shen <george.shen@amd.com>, Aric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, Bagas Sanjaya <bagasdotme@gmail.com>, David Hildenbrand <david@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>,
  Vlastimil Babka <vbabka@suse.cz>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Luben Tuikov <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 00/14] Assorted kernel-doc fixes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ONC57BPML2NYJS5Q72JJNG4BFVHRNHHX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Here are assorted kernel-doc fixes for 6.19 cycle. As the name
implies, for the merging strategy, the patches can be taken by
respective maintainers to appropriate fixes branches (targetting
6.19 of course) (e.g. for mm it will be mm-hotfixes).

Enjoy!

Bagas Sanjaya (14):
  genalloc: Describe @start_addr parameter in genpool_algo_t
  mm: Describe @flags parameter in memalloc_flags_save()
  textsearch: Describe @list member in ts_ops search
  mm: vmalloc: Fix up vrealloc_node_align() kernel-doc macro name
  mm, kfence: Describe @slab parameter in __kfence_obj_info()
  virtio: Describe @map and @vmap members in virtio_device struct
  fs: Describe @isnew parameter in ilookup5_nowait()
  VFS: fix __start_dirop() kernel-doc warnings
  drm/amd/display: Don't use kernel-doc comment in
    dc_register_software_state struct
  drm/amdgpu: Describe @AMD_IP_BLOCK_TYPE_RAS in amd_ip_block_type enum
  drm/gem/shmem: Describe @shmem and @size parameters
  drm/scheduler: Describe @result in drm_sched_job_done()
  drm/gpusvm: Fix drm_gpusvm_pages_valid_unlocked() kernel-doc comment
  net: bridge: Describe @tunnel_hash member in net_bridge_vlan_group
    struct

 drivers/gpu/drm/amd/display/dc/dc.h      | 2 +-
 drivers/gpu/drm/amd/include/amd_shared.h | 1 +
 drivers/gpu/drm/drm_gem_shmem_helper.c   | 3 ++-
 drivers/gpu/drm/drm_gpusvm.c             | 4 ++--
 drivers/gpu/drm/scheduler/sched_main.c   | 1 +
 fs/inode.c                               | 1 +
 fs/namei.c                               | 3 ++-
 include/linux/genalloc.h                 | 1 +
 include/linux/kfence.h                   | 1 +
 include/linux/sched/mm.h                 | 1 +
 include/linux/textsearch.h               | 1 +
 include/linux/virtio.h                   | 2 ++
 mm/vmalloc.c                             | 2 +-
 net/bridge/br_private.h                  | 1 +
 14 files changed, 18 insertions(+), 6 deletions(-)


base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
-- 
An old man doll... just what I always wanted! - Clara

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
