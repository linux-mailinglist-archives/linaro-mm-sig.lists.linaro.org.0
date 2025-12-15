Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD8DCBD8FC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 12:41:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7CFEA40150
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 11:41:24 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by lists.linaro.org (Postfix) with ESMTPS id 7AA3F4010F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 11:39:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=EzAYT+gV;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.216.42 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-34ab8e0df53so3455291a91.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 03:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765798763; x=1766403563; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c1jHunOtVkIwedmQvRsrzJgL7loZmMhygmTOE5iX6PY=;
        b=EzAYT+gVmccUOqpwFlZvS1X0HsW14p1Q8Y2zNgkKOT90lYeso0L8XyXZ5cQaKLOKtK
         ve3eHvco3c0BDUV4zXfWO/OTDUnjcgoVpyqWL3NGZMKiT+lGiUCsVFH96jWk82U/EgV/
         XrHePadzNy1BjlP6VJ2ZhNqqfkEEF69tCKNNry5q0uPLln/4zIApJqbD6RULQEVEGU8c
         mL4Ea1OA/A6WnsX7ycVHCjVwuTjvb5c1dw8QQVlFWHwRuk/FHtjD2kjN7Q+dq4pXLvJ9
         3yNsFtZZLR/1BvfXdEvfDCMtu6RjzZr7WA6+eLtAl3tc06KMHnLOeqsNSA5gCfD1A5V7
         rtrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765798763; x=1766403563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c1jHunOtVkIwedmQvRsrzJgL7loZmMhygmTOE5iX6PY=;
        b=Gov1gT+Cbl4hJ/O4Eh2OjeKvLKmtpHDDKEgTVm0HuRlZUcYdd6QBMoiHMe5O50zjam
         uMSt+QXJ7a19tErpd6zQwkC4XeldsCF+t1/cDdZCzvKREoDbFpxxffMI9NfQOCcAFg28
         HM92zGP73OKIWF6TeUS+vJTFTodLM+MFluVp8IQI2RZY5ZVBDJZPFVpzD/6hjn7RSKBa
         luD/jkNDyRVrWyMczfpRKVfVK42Zj8+7ZVekec++k6iJGyGSkeKzXyR8bmWEHnr/w4tM
         C4Kzb55xlB9y/qkpsKuSPYYFpdUm/YdCurCJmCv8DvnB81YXnZwYZPfBKhenY/G6Gtiq
         BWvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFX7QsCVg9CLoLIXkm0EK8E+uDYIhBcjiwNxqRp4HYTh5a9+ZD5PX2fHjNzED3gPJHyuaOHhOUBGIyY4Ts@lists.linaro.org
X-Gm-Message-State: AOJu0YxxX9z9vO5FIJhLj4yuoEc8ncZQgHyTfImoFEEiL8/djbEFfAeA
	AkDcFCBri3/IguIA4mM+vg6BoBWBF9aPaBVja595k1FgJoq8hzHuVAoS
X-Gm-Gg: AY/fxX476REMSBnTg/NhUncedNAGpbYpRf69lUB4AT2femMTuTtlmL5noCZp4r5RuAZ
	o5K5FaAK+knU66V57VJSFdLL5fvwlh/tbtKPTmoWDUVVpPxFZLtEgStme967iMwbTDMGbSHiMWS
	hTVP++jOxkX4MILMuRTlpFirfL58ZHKRvD5fPcbPDFsuH0nQsLYP4+VEN7363AzoSXdEQbPXOM4
	E3I4DxXTvtf63TqvIpYkkE06DrGzVKH8VLLT+cWjvWCrqJpeoeRO+CKKF1teQuBE2ufB8lJvOhj
	qkJ2B0AWWDDqkvu6Op2HMjHIVhTCuuB8K012Jtzy5ewH0oxh2Us3HzElzg0HEuM0+cWyDmDp9GV
	iB2UtbS7Rp/hJ/39nL+ViBhIXuV3lFD41A9XWx0cgSCk5+6OLTT4/Euwt5jHvzKzF7UMzs2fdz2
	dGaX55hTCoz9o=
X-Google-Smtp-Source: AGHT+IGkBlvtTJJI36YenJR2Mj5A83uVH+1orPi0BLwAvata7acR5hue/qogcd9VSy03MC0if9MWYQ==
X-Received: by 2002:a17:902:dad1:b0:2a0:b066:3f55 with SMTP id d9443c01a7336-2a0b06646d5mr58199625ad.10.1765798762558;
        Mon, 15 Dec 2025 03:39:22 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9d394easm129684215ad.25.2025.12.15.03.39.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 03:39:18 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id DE7F144588D6; Mon, 15 Dec 2025 18:39:06 +0700 (WIB)
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
Date: Mon, 15 Dec 2025 18:38:57 +0700
Message-ID: <20251215113903.46555-10-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251215113903.46555-1-bagasdotme@gmail.com>
References: <20251215113903.46555-1-bagasdotme@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1238; i=bagasdotme@gmail.com; h=from:subject; bh=g0JdaQypaND4lTcW0ZqbYUYcFFa4BCtHp67rCXQ3qdI=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDJn2n4OZ3cRMgut038Q1Mvx+WnR34qt26aRSjxQZU2vjg 6FirXs7SlkYxLgYZMUUWSYl8jWd3mUkcqF9rSPMHFYmkCEMXJwCMJFN+xkZVrl1e0394/7u+RLu +RrXLfO4ZDZ3GN7cIROa8FQ8sjv1CCPD78WiQS1yNZrTC6Ti9OZz7YjK/sxnP51XNFzRTCM96w0 nAA==
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp; fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.42:from];
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
	BLOCKLISTDE_FAIL(0.00)[210.87.74.117:server fail];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7AA3F4010F
X-Spamd-Bar: --
Message-ID-Hash: HIYMINLFCGWRSCBVYGPCHIAKKNHJ2A7Y
X-Message-ID-Hash: HIYMINLFCGWRSCBVYGPCHIAKKNHJ2A7Y
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, =?UTF-8?q?Eugenio=20P=C3=A9rez?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.c
 om>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George Shen <george.shen@amd.com>, Aric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, Bagas Sanjaya <bagasdotme@gmail.com>, David Hildenbrand <david@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>,
  Vlastimil Babka <vbabka@suse.cz>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Luben Tuikov <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 09/14] drm/amd/display: Don't use kernel-doc comment in dc_register_software_state struct
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HIYMINLFCGWRSCBVYGPCHIAKKNHJ2A7Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sphinx reports kernel-doc warning:

WARNING: ./drivers/gpu/drm/amd/display/dc/dc.h:2796 This comment starts with '/**', but isn't a kernel-doc comment. Refer to Documentation/doc-guide/kernel-doc.rst
 * Software state variables used to program register fields across the display pipeline

Don't use kernel-doc comment syntax to fix it.

Fixes: b0ff344fe70cd2 ("drm/amd/display: Add interface to capture expected HW state from SW state")
Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 drivers/gpu/drm/amd/display/dc/dc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/display/dc/dc.h b/drivers/gpu/drm/amd/display/dc/dc.h
index 29edfa51ea2cc0..0a9758a042586f 100644
--- a/drivers/gpu/drm/amd/display/dc/dc.h
+++ b/drivers/gpu/drm/amd/display/dc/dc.h
@@ -2793,7 +2793,7 @@ void dc_get_underflow_debug_data_for_otg(struct dc *dc, int primary_otg_inst, st
 
 void dc_get_power_feature_status(struct dc *dc, int primary_otg_inst, struct power_features *out_data);
 
-/**
+/*
  * Software state variables used to program register fields across the display pipeline
  */
 struct dc_register_software_state {
-- 
An old man doll... just what I always wanted! - Clara

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
