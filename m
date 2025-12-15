Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F1456CBD90B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 12:41:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D64340157
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 11:41:38 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	by lists.linaro.org (Postfix) with ESMTPS id 2F705400CE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 11:39:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=TFzHulks;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.214.173 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2a0c09bb78cso8844565ad.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 03:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765798763; x=1766403563; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TrKHAwDmwEWPzZzAT0wzFml+5He+R0bXqVhPFRZE9SA=;
        b=TFzHulkszZkkBQCftSfpxM+ntYShqKDTZ2kj2RtaYOCOgouzvwj5Epe9OPPmACOPwD
         27oxrFptZft3GYBHBcQF9vFkKQW8Q9H4kE9liRBPZ7bgrcmSfLyVrjmjpw/Ao6FOxu0C
         RwQ6OcxhkQdQOn0EF1Kq/D63Z9YgCkOA4KJREjesLQBdCwlVWWRTK88NkbId5v6bmvmA
         unHOK4UdJd1lMI3gxJaYCMODpvqhLZLvku8YBcXDuQHjRbT7NmT1d4nnK/9U5AhX9u2t
         rnJBp/8TA79b9IXDv8h9BZvmkPak8oy7+49RAgm04vDnxAQyWqRCC8BReLI3wa+I1Bdp
         AHPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765798763; x=1766403563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TrKHAwDmwEWPzZzAT0wzFml+5He+R0bXqVhPFRZE9SA=;
        b=JfetZIy15ZBj+sXmyqnIvtz/yCMbMS5Z9XRAIvQQnt+lG2ILRdno9vq5jn5dyJBDQk
         PEVrhj8Kqh/MPR2yG77g6d7W53c7xNlRYDM3dTYcaP7ClGb0I8yJn5zPlpiU6puC+IQQ
         Rgf2oA0fXqkLpqfiCXs+qWd9IhVgDTAgCPil6v5jX68+a2hL1C55I1i2aspOGXgudf8e
         hyjzzNV8wTdzR5Yfo9Lnl7inotQar9iGSj7CBS61j5zBdyjYx/unCtpr7qrjcYkuZLef
         yUiG9vX2RuxYl83Tn2soyehyABb6UudnHXD519TTSSmee9StSy5QccDdvTYQEOs0Z07F
         4Ueg==
X-Forwarded-Encrypted: i=1; AJvYcCXRv+lxlF21HXABV4nIExI7WOdCCXJtXkGMZqRIBkMRBoyIv0rfrLEMYhNPuUMc8AIRSpVx4miLrc34U7NJ@lists.linaro.org
X-Gm-Message-State: AOJu0Yz/CNHhDizcZAr2u7CMiwpn/hrbPm6p442kzmTWR2fxKm8eZKPK
	w0mTU6u9HgJQB+C7Diqf9Z1mTuMOKCj10VzyEsA2EWlO2V5O8PsY2KuF
X-Gm-Gg: AY/fxX64LAfxqDFCIgldgIJT0HdKRTfEa3dGjdRm8CWhwulwZOkry+gVq+d+weqbT9d
	wHHBCUqt62/+J6+96Q1F6b2/nETfDJMMS1FSpFnDji/Go/8kkitJ+mTyg3Kvw1JSpsjOfryy8t+
	r6S81WQcK5PGGYhDdUkK+9rXko3YCTMpJVekz5+MXSfC5+vZrRoFul+XfF2RiSrbWRYNj0ucvuF
	4VIeDPhhrlY/+g832FqFrqgryXiQWXFjCMcNN3nnumJQfbxejiXB5OB8Q3LN82FHyKPuB5FjRAf
	Ffx96HM2bZAgmaA4WHkwtjTewqCXldQPXUUYef1cCYxFd4l9ZfbNhho5KfjBaigOWr8xJOLztEE
	ANA5ETavwtEYyKMjK94Ee9ONjeAeigwnaxaC73Ej1PXB9SsCQHhruNT1qzk/VKagPwhtWtGncor
	a32lMLt3A4F+I=
X-Google-Smtp-Source: AGHT+IGEKo7pUOqZ/Msgj5pboeIPXCGG8SyTdVwEqd2zfEZHqjnoFfxwhdJcfbexnC7zJuC88ktUrA==
X-Received: by 2002:a17:903:1988:b0:2a0:d0ae:454d with SMTP id d9443c01a7336-2a0d0ae4b49mr35282785ad.22.1765798763267;
        Mon, 15 Dec 2025 03:39:23 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a0f58d7c27sm27523715ad.24.2025.12.15.03.39.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 03:39:18 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id 357B044588D8; Mon, 15 Dec 2025 18:39:06 +0700 (WIB)
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
Date: Mon, 15 Dec 2025 18:38:59 +0700
Message-ID: <20251215113903.46555-12-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251215113903.46555-1-bagasdotme@gmail.com>
References: <20251215113903.46555-1-bagasdotme@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1239; i=bagasdotme@gmail.com; h=from:subject; bh=NBybN5/snlW67CYY0LDf5z9mjlB8/ZE5MQWmfMjzEtk=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDJn2n4OX/nxidPxCa7t5fuOD8HMfrQSuP1hub/O7ZcKpR 3k2jWdLOkpZGMS4GGTFFFkmJfI1nd5lJHKhfa0jzBxWJpAhDFycAjCRtAcM/yunTjs9ydWYJypu wYcH6cfFNi1X5dYSuyPxxuv3me1JcpKMDBs+vU9uutHzrUbncPwy+73MjZlbOwIfHrr54bGU4uz aOwwA
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp; fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.173:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[mail-pl1-f173.google.com:rdns,mail-pl1-f173.google.com:helo];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,zeniv.linux.org.uk,suse.cz,linaro.org,google.com,redhat.com,linux.alibaba.com,linux-foundation.org,blackwall.org,nvidia.com,davemloft.net,infradead.org,oracle.com,ionos.com,linux.ibm.com,arm.com,linux.dev,konsulko.se,brown.name,collabora.com,cumulusnetworks.com,208suo.com,cdjrlc.com,inspur.com,gvernon.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCPT_COUNT_GT_50(0.00)[86];
	BLOCKLISTDE_FAIL(0.00)[210.87.74.117:server fail];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2F705400CE
X-Spamd-Bar: --
Message-ID-Hash: A25UG4UWTGAZY5CP3R7JGJPUHRUO3IUF
X-Message-ID-Hash: A25UG4UWTGAZY5CP3R7JGJPUHRUO3IUF
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, =?UTF-8?q?Eugenio=20P=C3=A9rez?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.c
 om>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George Shen <george.shen@amd.com>, Aric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, Bagas Sanjaya <bagasdotme@gmail.com>, David Hildenbrand <david@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>,
  Vlastimil Babka <vbabka@suse.cz>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Luben Tuikov <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 11/14] drm/gem/shmem: Describe @shmem and @size parameters
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A25UG4UWTGAZY5CP3R7JGJPUHRUO3IUF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sphinx reports kernel-doc warnings:

WARNING: ./drivers/gpu/drm/drm_gem_shmem_helper.c:104 function parameter 'shmem' not described in 'drm_gem_shmem_init'
WARNING: ./drivers/gpu/drm/drm_gem_shmem_helper.c:104 function parameter 'size' not described in 'drm_gem_shmem_init'

Describe the parameters.

Fixes: e3f4bdaf2c5bfe ("drm/gem/shmem: Extract drm_gem_shmem_init() from drm_gem_shmem_create()")
Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 drivers/gpu/drm/drm_gem_shmem_helper.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 93b9cff89080f9..7f73900abcbb9d 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -96,7 +96,8 @@ static int __drm_gem_shmem_init(struct drm_device *dev, struct drm_gem_shmem_obj
 /**
  * drm_gem_shmem_init - Initialize an allocated object.
  * @dev: DRM device
- * @obj: The allocated shmem GEM object.
+ * @shmem: The allocated shmem GEM object.
+ * @size: shmem GEM object size
  *
  * Returns:
  * 0 on success, or a negative error code on failure.
-- 
An old man doll... just what I always wanted! - Clara

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
