Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F327BCBD8C3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 12:39:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 195BE40145
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 11:39:55 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	by lists.linaro.org (Postfix) with ESMTPS id 37C213F78A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 11:39:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=RImWvd8j;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.210.178 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7f89d0b37f0so404919b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 03:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765798751; x=1766403551; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H6vVzDCLpyU2LgSSSdcXlxGJ4GVOIz+XeeVoTvfPkdk=;
        b=RImWvd8jFeJpvTB8ww1QeIXHcQcNO9WgEiVkVMish6vARPXU3K/CJPS9iYJS/G5oL/
         lRY6SlEgHap14zqTk9n0lUoi7NEVynXHKKyWSextbab3etx8miMkK6R4l8AqhtNwshH1
         qis+FNcjc6XQ5gE/NTtI29rMCDu2km6VA9h3JboIbg3fWhCOCLesVXY0iaUJbpjVq7mG
         mOaNqZhq/flyhooHtR+OA2LDdRJc6TnMnPDofOcnlUkYHZ7dsP2KCDoEAvdTLMv4vyqq
         7mmz7YtD7vAcZgakznS0ryZ526IH20+kuNoVflXf0o62K1u2oRZz/uVb5b+h0uDjLUwf
         lGXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765798751; x=1766403551;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=H6vVzDCLpyU2LgSSSdcXlxGJ4GVOIz+XeeVoTvfPkdk=;
        b=q9TXYrO9M9LJ1LOGs1xJs7W+ABhd4v9cjiqeUJ+hDbDNUZceu1XJ2m1Pv9FaR97hvx
         eJeBjJLOjkWUCgC/VCsa9rTRXLVyJKjlSUc7oG27KmDrMyvH2418sjiT/tuYcqnuhL8w
         AxpSzwRnPv1n5DqaKPdGEGO15tZjg6g9bEJi1J4Zqdue3X0rtPy2X20u3kmU5mYHg1Zs
         cDscFJYoGEvFfUkAtjO2biFc5JJ6Zv7VxBbQPtblpEsg09ctKKDIG7VqSImh75wRaWyM
         6NR5GNXV0QPdwfYu7/R1ejgREWyj90glEMqfi41tpYq2TwfvdHgBEViuZCEqe5iIYTjP
         ZXYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFUkeAe6vbcWWbhVsDLh10fG7VNJD8naiyt7N2J/YlR6UWMbr4YLHQuiMr3l4t7K4LkuGLetv3tjNjwEa2@lists.linaro.org
X-Gm-Message-State: AOJu0YyNdcsdXpQEWWq0Y03xbRPzD/KpQr+CjGyVjfNYsmgAIdWvdBUc
	YiI1xOFHLKb1W5AXYEHPnBdophj5ADXlITm82sxBhX/pAsVHpXZyzsNU
X-Gm-Gg: AY/fxX4C4A675eacGknZ+TlfZgGWUztGE2F1eWi+9eUDsmzVMUlKCgXWuv+zMn9gpjo
	4uZl7mQMryRRPUvP/d4dV6YGc/vR6nd8nrMOzU8FZOyjl1KhqMKFZCDYkE5xk2r1iV+qFs+qKv5
	aAOUgWG+A77bEnzu0cZAfcpNFPL3LmO99dvEXl4GA7uJXOovXq42A1TNnP4lQP1+/pSirdbDiRG
	qCkwrThFgYnihC773OTlRMLvjS2OJ+Ej4L8oWDQl3UdgaAmqTC7uhJ5w5WkY0+BEKAUxM8dnJjD
	kpkTuz+vHIqgHsaZy2T7C5/pkio9svnAMh+MWo4bECd9naxIYD9W6mt0Ts6lVr3z1kSDzL0Qt9v
	QPHrznlcJQWBZV1io46KqopTInE0aMcavgBzv4XXkVC7zGvFHBgWWEpPPLCHE6Z+CeRYOxKFPMV
	OxPjQwsS03r8U=
X-Google-Smtp-Source: AGHT+IFlU3I+cKXX8C9kVGFzGiJyAz7/LTk2+tkj0Oiyk+q1A92AqVW93jQniiO/3heM3uCR/CKzzA==
X-Received: by 2002:a05:6a20:728e:b0:366:14b0:4b16 with SMTP id adf61e73a8af0-369aa740ecamr11005465637.33.1765798751132;
        Mon, 15 Dec 2025 03:39:11 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9b3850csm133388085ad.17.2025.12.15.03.39.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 03:39:10 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id 1D26D444B391; Mon, 15 Dec 2025 18:39:05 +0700 (WIB)
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
Date: Mon, 15 Dec 2025 18:38:50 +0700
Message-ID: <20251215113903.46555-3-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251215113903.46555-1-bagasdotme@gmail.com>
References: <20251215113903.46555-1-bagasdotme@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=950; i=bagasdotme@gmail.com; h=from:subject; bh=zaXx2zRxHwtjfsFTgY05kdIMv0UeQBx9b1FFiByYYYk=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDJn2n4N0b+unPg8UXJx6+/+iP9I7pV1rdBYrPMm9NqGYl enCm2OnOkpZGMS4GGTFFFkmJfI1nd5lJHKhfa0jzBxWJpAhDFycAjCR246MDN8qzkf5GvF8u6h8 fK78A+u9Z2vjTS5MNJ2mcnT+/S07J0sxMvTNsLugLdEgeebaKl/Lt7ZFnv2pX8UvGPzINA+RNZw /gQsA
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp; fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.178:from];
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
X-Rspamd-Queue-Id: 37C213F78A
X-Spamd-Bar: --
Message-ID-Hash: KQYP7TJQMIBDXPWMPOHBUGE66MMHWCWV
X-Message-ID-Hash: KQYP7TJQMIBDXPWMPOHBUGE66MMHWCWV
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, =?UTF-8?q?Eugenio=20P=C3=A9rez?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.c
 om>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George Shen <george.shen@amd.com>, Aric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, Bagas Sanjaya <bagasdotme@gmail.com>, David Hildenbrand <david@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>,
  Vlastimil Babka <vbabka@suse.cz>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Luben Tuikov <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 02/14] mm: Describe @flags parameter in memalloc_flags_save()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KQYP7TJQMIBDXPWMPOHBUGE66MMHWCWV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sphinx reports kernel-doc warning:

WARNING: ./include/linux/sched/mm.h:332 function parameter 'flags' not described in 'memalloc_flags_save'

Describe @flags to fix it.

Fixes: 3f6d5e6a468d02 ("mm: introduce memalloc_flags_{save,restore}")
Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 include/linux/sched/mm.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/sched/mm.h b/include/linux/sched/mm.h
index 0e1d73955fa511..95d0040df58413 100644
--- a/include/linux/sched/mm.h
+++ b/include/linux/sched/mm.h
@@ -325,6 +325,7 @@ static inline void might_alloc(gfp_t gfp_mask)
 
 /**
  * memalloc_flags_save - Add a PF_* flag to current->flags, save old value
+ * @flags: Flags to add.
  *
  * This allows PF_* flags to be conveniently added, irrespective of current
  * value, and then the old version restored with memalloc_flags_restore().
-- 
An old man doll... just what I always wanted! - Clara

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
