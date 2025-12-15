Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 80779CBD8DE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 12:40:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76467400F6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 11:40:40 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	by lists.linaro.org (Postfix) with ESMTPS id A1303400F5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 11:39:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=A+BKCS3D;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.210.177 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7b80fed1505so3224707b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 03:39:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765798754; x=1766403554; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yYIA++CxPIcYPKgHl3oGianXtJJpe/hDcX33067gP64=;
        b=A+BKCS3DAqaH/5g1/Zy5Aq7C9uBjX0wZUKEEDnrUSw9h8bdXSWSz78Ks/DeZuWvM7g
         NIYrCnTwd7SEEKCHOsHXD8dzWt8Z4gwT07X0o5N11aG9i0MG2xpJv0FfE5wCUp+pugG3
         OSMFCcnW5KH6aOw+HEn80kJV+2OWYkwbC5o9BE9TcvNnfug3h8NLqBuKH6xGsVvxQBMM
         rq00MNvXIb96CMu4iRGqyBiTB1gBn1Xuw6lQOKdQxpGmFX2XK/aKxW4mO/qSuPVqzW64
         +MfzxKOH1OoDYLahPP6Vu/bvHP3R7iaVa88XXUs+RIH1l9GW3O196WRGYNeqWcs+ou8L
         qlZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765798754; x=1766403554;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yYIA++CxPIcYPKgHl3oGianXtJJpe/hDcX33067gP64=;
        b=WWds8MXymPr9xLoxAXn2UaAdu8kMulh1v7E5KVTtPPGtZzVt1xPQgK5651bI7/ksaF
         w+fh14RlOvYoHETujs6pSHipGJfqWdTm1P/s5NknmEH3gvEnN/9FYC4mG+X5WnAIH5mE
         7sGyk6FZV1CQu5NmZE8jhWDDcTbRoGFv6PuTTsCGMyeQ4anR2PSUDj/awOPdMbMEhaGn
         +CV6g+I4CsmMilgMTsKMmjecAHv0Ki7+i/5VqPnDy7SyBSrv+6RXPbobs0zxTwALPnRp
         3Y0xW9pgsPpQnbP6tAwPLpaI2c6gTDX0mXKNc5p6B6ZC1VrTGEMhe1wRwpyMmfhAKHOV
         9nog==
X-Forwarded-Encrypted: i=1; AJvYcCVThYno/mJ40vqWjQZ31qVlm/MpTGcVOzbijTse85aKbgmVbsA1oBgWvEFzWxnHEv/zIG+Gf/kK/zUdSJP+@lists.linaro.org
X-Gm-Message-State: AOJu0Ywe0z9zNDW2Qv6IQzXEBsaE9Mq0Mgf8ZwFrcHNiVRBaiUczSTVQ
	Q7tPUYqRaVAdkHzIlmFzvKHqosTR3MusuSOoROHnJ9/IM2qsOqaO7Pdl
X-Gm-Gg: AY/fxX4tcXsbRQzm64vMxGcV+l06UpsoRe28WNf6LL9F7+8JJGeCPK6kd96PLIWFPx8
	VvTx0mE1Ql0u3lrfKl688jyFjuyUOiJhN8Pe6ZqAmedXfl3vQr2Gs1rE1YM9nIZ6DTWcEsTYZ/v
	18qO+PxUrqbwwYs6kbwoD/G7Y6yafNjTgB9OLhgRqkwM03LTAzP7zSnn+JeSy4oZbXJETptKGgz
	h6QK5bPip/9NxMM1lP/T5mXGIUCJ5xhxhRfWBz4x4AZUIyU8XPEsLB5pBeIqtHNZ5nxZ3mS3sli
	gmIMuqjdCg2VLMbsr7D2eV0ZfcQAYBPoOsJnZe1mFN4tY9669rGHvoUuHLKsVSPffYSF8JG07z5
	dm0RQJx8fReYXS/cn8Bt8rKgSHeQ8PxdlBNRaPvg10sJxK+m9AYJfN6A08mld2CIO9eeKYFVAiw
	Pairfvz4ElzSs=
X-Google-Smtp-Source: AGHT+IHZqxApH7RH4SvWeJJw7f7kzbBWfG87+pyKENlTOJ0etjJH+97jX9IVf9ZouLQDPcaXmCZT+w==
X-Received: by 2002:a05:6a20:3d8b:b0:35e:11ff:45b4 with SMTP id adf61e73a8af0-369adfb3407mr9418258637.21.1765798753761;
        Mon, 15 Dec 2025 03:39:13 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c0c26eb0f6bsm12221315a12.14.2025.12.15.03.39.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 03:39:12 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id 70D25444B393; Mon, 15 Dec 2025 18:39:05 +0700 (WIB)
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
Date: Mon, 15 Dec 2025 18:38:52 +0700
Message-ID: <20251215113903.46555-5-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251215113903.46555-1-bagasdotme@gmail.com>
References: <20251215113903.46555-1-bagasdotme@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1025; i=bagasdotme@gmail.com; h=from:subject; bh=sT1prVB7LRNvf/W4XodTbc9bjm2B3700BxVWkrXUues=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDJn2n4OyyibMaS/TcJdL00op76xZei7L2Pv7hFORU9uuV vT80n3YUcrCIMbFICumyDIpka/p9C4jkQvtax1h5rAygQxh4OIUgInIP2BkeHzeo3teoLm8pE9N cXOPl0J5QO7s9Yesjvev3nrjTaKBPiND/5K7Lkx+c2t1WS5sWq6V/2tGhSPf8dA5nnLdX2fcuhb OBwA=
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp; fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.177:from];
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
X-Rspamd-Queue-Id: A1303400F5
X-Spamd-Bar: --
Message-ID-Hash: 4QEMINRQ7TJFTTRMFLJLXXDSOTB67TEC
X-Message-ID-Hash: 4QEMINRQ7TJFTTRMFLJLXXDSOTB67TEC
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, =?UTF-8?q?Eugenio=20P=C3=A9rez?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.c
 om>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George Shen <george.shen@amd.com>, Aric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, Bagas Sanjaya <bagasdotme@gmail.com>, David Hildenbrand <david@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>,
  Vlastimil Babka <vbabka@suse.cz>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Luben Tuikov <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 04/14] mm: vmalloc: Fix up vrealloc_node_align() kernel-doc macro name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4QEMINRQ7TJFTTRMFLJLXXDSOTB67TEC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sphinx reports kernel-doc warning:

WARNING: ./mm/vmalloc.c:4284 expecting prototype for vrealloc_node_align_noprof(). Prototype was for vrealloc_node_align() instead

Fix the macro name in vrealloc_node_align_noprof() kernel-doc comment.

Fixes: 4c5d3365882dbb ("mm/vmalloc: allow to set node and align in vrealloc")
Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 mm/vmalloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index ecbac900c35f9c..2c3db9fefeb7ab 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -4248,7 +4248,7 @@ void *vzalloc_node_noprof(unsigned long size, int node)
 EXPORT_SYMBOL(vzalloc_node_noprof);
 
 /**
- * vrealloc_node_align_noprof - reallocate virtually contiguous memory; contents
+ * vrealloc_node_align - reallocate virtually contiguous memory; contents
  * remain unchanged
  * @p: object to reallocate memory for
  * @size: the size to reallocate
-- 
An old man doll... just what I always wanted! - Clara

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
