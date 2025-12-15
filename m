Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D03B8CBD8CC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 12:40:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F049640149
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 11:40:08 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by lists.linaro.org (Postfix) with ESMTPS id 0F2193F91A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 11:39:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Edxivk0y;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.214.171 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a07fac8aa1so22150555ad.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 03:39:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765798752; x=1766403552; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TWXueLrhDneeDmCGizpSHzMSgAg8yMgxTmeT/qXEn+I=;
        b=Edxivk0yWvQrLBaBz90536D+pZegtGTUGD70gwb6J0Zxq9n2atnyYIZfFKr1EC28w5
         t++RqHgzLO1zeR9CMp1C0oN6nmR9Gj5pXNkAtcgVR9GhgLz2SpWuMuklz9zKjOenk7PG
         FDOr12+3yEaGFCnkdCJ9Cx/U1XrFeKriksl5h1Lq2y/gEofmaSGsQS5+B8iLpt51ms9T
         gUSF6zWCfkp0CA5ibPIwD2TFN4ER6kWiO+6KhTe38578uwxR7cWk36xtMgXWictPw4uN
         3L8DD4u5zUUQij6TG7hx+mU3sPFgU8pE7Yha2VmUm+Y6BxGXsU7M7ZlQ4sGgnhRwMcNL
         FZLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765798752; x=1766403552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TWXueLrhDneeDmCGizpSHzMSgAg8yMgxTmeT/qXEn+I=;
        b=r3gLZ6Zms2tw7Seler4lGMBiO5KW4D/i18saFkutLYv4FCRQJmsSASLZ46q11SFAQ3
         UD5Skam5I5u8F3UvEg3P6FfZJWt9SrPr2v3PB/Fs35v0mw1h8sHPvvZ/1hqFZCzYxHXf
         T45qYPH+ewQpN1PZqYQG/y5h97pPMV1RQynlc5/hemQmtgIGOtCcww6Qd+q4ouNm7ymW
         DBRJW9x5vHpeP5gfq8h2jN7WtFY/pnHEKCTM42p6kQyzN+l9lfPzG3ruz5GybZcHYXjB
         5oOnaY761BvZzF0aHkJbIFfTmy47SHWY7XWNprUI2Pe8y9KjtXaUVQLnzZglVnaBqc4F
         xRiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsDwv9eKZEj+6RmOstEYbrHBh14DjyifKKMn3ArpkgYNhGk+nmCG5M+/u2j3nvSMGVlwTXLLwgUXFvGQnm@lists.linaro.org
X-Gm-Message-State: AOJu0YwaP3P+wifrcA9trwv953CZEFwoWsBldCWDi3a2PYxsOHKGpOpJ
	MPv2GWFLkBO0AvcCeRjNCtdkssKLVto0CFN/7tbLD1d9BD0wRM1rKYDD
X-Gm-Gg: AY/fxX7zdK0cXD7AywQH6XvuukTffxhfLSBpk5RFSEpkEOUYnIMquzDDjTTmjMUXJtR
	ZDVTndGR2znPSercbru2/op427KsXCrCQ2wiKPY7D/B9We2nhFquDWxgI5G1HitPq78FoGw9uLS
	a83YRhwW1XE9qvnFNKd58DZI7Jm/LEArR1nKrV39cujKmng5f0Xw225+Guwt0FtQt1VryBMcNa8
	sA9xkHcpvVAYQMhh0d51d1it+O2pyDS+zXtrTmWTENL1+MvJYKetp34Do8DhN3cpkkwJA3fi6RY
	sdPTfpJ17YfJhzaXfq28/hlnNRPhSsClm6chrife0aWA9LnxGVn7rh1p8UgfBmooTd6y5tx6ZC1
	r+G0dOX7twhMHfkgFeffqpaVnxJCXqGCVEuD3SoM1MhJ3Ti/VSqnT6+xQvx8r7gCzzPe+MyPyou
	LP7NEYSj72yN4=
X-Google-Smtp-Source: AGHT+IHBwyvn37cMWft6XaLu78i521F3TitB1ZgZCjrLkgz/dWJXwkRq1mT1+qz6m/LgaTgF4rxTDQ==
X-Received: by 2002:a17:903:3d10:b0:2a0:a4b7:44af with SMTP id d9443c01a7336-2a0a4b74893mr49683665ad.26.1765798752075;
        Mon, 15 Dec 2025 03:39:12 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9d36ddcsm132733715ad.32.2025.12.15.03.39.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 03:39:11 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id 504F3444B392; Mon, 15 Dec 2025 18:39:05 +0700 (WIB)
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
Date: Mon, 15 Dec 2025 18:38:51 +0700
Message-ID: <20251215113903.46555-4-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251215113903.46555-1-bagasdotme@gmail.com>
References: <20251215113903.46555-1-bagasdotme@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=896; i=bagasdotme@gmail.com; h=from:subject; bh=1tOY86lhWOCbSHsqmK/tuDEilXGPwKXl/15tM3wSixs=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDJn2n4Mqzx7cbGl2s1Xb5iYDm7bLkws+2881173X3pa/f UbeT2+PjlIWBjEuBlkxRZZJiXxNp3cZiVxoX+sIM4eVCWQIAxenAEzk0hqGfzoRZw50iXbWS+pV RRyxzVGfNT/eQV3w9+MclUw9PumMlYwMO5cdc7i131P/rrG85octa1tun66WP3rW6W/Ropnr7E6 G8AIA
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp; fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.171:from];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,zeniv.linux.org.uk,suse.cz,linaro.org,google.com,redhat.com,linux.alibaba.com,linux-foundation.org,blackwall.org,nvidia.com,davemloft.net,infradead.org,oracle.com,ionos.com,linux.ibm.com,arm.com,linux.dev,konsulko.se,brown.name,collabora.com,cumulusnetworks.com,208suo.com,cdjrlc.com,inspur.com,gvernon.com,suug.ch];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[87];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0F2193F91A
X-Spamd-Bar: --
Message-ID-Hash: 4KQXDHCH3MO3GLJNPRHWBSXQPOQYCVQY
X-Message-ID-Hash: 4KQXDHCH3MO3GLJNPRHWBSXQPOQYCVQY
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, =?UTF-8?q?Eugenio=20P=C3=A9rez?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.c
 om>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George Shen <george.shen@amd.com>, Aric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, Bagas Sanjaya <bagasdotme@gmail.com>, David Hildenbrand <david@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>,
  Vlastimil Babka <vbabka@suse.cz>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Luben Tuikov <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>, Thomas Graf <tgraf@suug.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 03/14] textsearch: Describe @list member in ts_ops search
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4KQXDHCH3MO3GLJNPRHWBSXQPOQYCVQY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sphinx reports kernel-doc warning:

WARNING: ./include/linux/textsearch.h:49 struct member 'list' not described in 'ts_ops'

Describe @list member to fix it.

Cc: Thomas Graf <tgraf@suug.ch>
Cc: "David S. Miller" <davem@davemloft.net>
Fixes: 2de4ff7bd658c9 ("[LIB]: Textsearch infrastructure.")
Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 include/linux/textsearch.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/textsearch.h b/include/linux/textsearch.h
index 6673e4d4ac2e1b..4933777404d618 100644
--- a/include/linux/textsearch.h
+++ b/include/linux/textsearch.h
@@ -35,6 +35,7 @@ struct ts_state
  * @get_pattern: return head of pattern
  * @get_pattern_len: return length of pattern
  * @owner: module reference to algorithm
+ * @list: list to search
  */
 struct ts_ops
 {
-- 
An old man doll... just what I always wanted! - Clara

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
