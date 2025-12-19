Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 65801CCE285
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Dec 2025 02:40:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2520A400F1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Dec 2025 01:40:32 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by lists.linaro.org (Postfix) with ESMTPS id A52E23F9B2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Dec 2025 01:40:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="OiB/8MlY";
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.128.174 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-7881b67da53so10846567b3.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 17:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766108423; x=1766713223; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zWU/939i2tSCrFcjT+226pu70w6qgHLxJ5V3Gj7ooMY=;
        b=OiB/8MlYgNQt6Rd4du2N+Svz0mbwcW0C2imbFXZVrIDE3QIxUOgRqhzX/BfiOSus+6
         DmMfOvZ4op1K2lDVLdBQnAXqg+VVU3P43cK8Zj7uGInxjYnBroR+eYTxn9vQIU2HPyMm
         WNJhx+ngqaWrk6M/RghPjLpgkjhDqNe+vlbuWKwjkUUJi/2kSv3sjKAx6GBTVLAMzcYQ
         tNY2JTQcQihztzc7HHNsUC/srnElqL2sEg94yjULsOW7udk3/zRUV79J7MomJI7liWGL
         nWI7I0+iRwHjbOWld2GD6BjqD8N/pJOLMA23AQpSjSMGWU56Fd4wlXVmLI9i0k/LOAl1
         VUOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766108423; x=1766713223;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zWU/939i2tSCrFcjT+226pu70w6qgHLxJ5V3Gj7ooMY=;
        b=ghNz5A83n59aUz/e9uTOIjvtEgv509hl03qyQ9lhJpeFh02RWVhPJN3FwTnPebuxwX
         +HFEzJ0hSXibtfGhKCnJ1cWK4rE7VVtARzljFYIff6c3NN26Raiy5s4lyzS1N6clyxSF
         jroUgv9CVAvsQ4PNhRQdnphAFxfgkEl+ii+ES+ix//A0udwwFYVg14qFS0qgkOHx4uUT
         OGgN2P/gnUiZOQyR1NzNH98oQ4FB+8fuylmLMCQoJ+2hUQ4UcVNE9M5/Z6xr8ATZZYl4
         8EyCUbMLDQuTXEgZx2KTHmrxx/YhnkTvALhzwxkgkEKRckVCN/P/LOHGpwqsUdonZJLn
         NiJg==
X-Forwarded-Encrypted: i=1; AJvYcCW3gTET8Feg0EuEaNwVx7tIuui5eTlTy8uq0y9rVF7IM+nJbSgkwEORXAOZ7bdQ1PqRH/enhJTF8/owyzWL@lists.linaro.org
X-Gm-Message-State: AOJu0YxaENxg+yLCwPRnKSUJc6+Hck6S1Hycte5kjR9Pz8xPoegvOuQn
	91SomfRnuc+PaEx5ezBJTs1FcQYrR1Gye5+Dc/coldT99OROs1wde/ff
X-Gm-Gg: AY/fxX5Tgb6SUQR7cxxP8qWk+l7D5f0HQjjHsya7BRfqNuh5PGYAK+NcSIp/vLFEWCN
	RbOn8d1JadrNcEQwC4Sbxwp8OpYsjrMddYNGZSMrSrqlp2hHtB+7CelUwD6rAPuM3/0bfRsYc4b
	9JU1BnqnJ4hfXzwh3I/2eOpg8PeztqrMPBZtoPpk1YaysxNr3ROwxkJMB0E4YDmRfXvM19XCY39
	QEuBZclut/IgaY+C0z5NSq6LzEp3hr7nPYxhzTRgyrseeXn8QZVENFK9AVQIgOzu4vqWQdRBksM
	qm2s43lLLSuRzjS9OmZYsYlYJj8QdxMKVka7eJnHv6ceOMUHKTfrqJ6Zmq4YSefcDvYP4oGtZjK
	qlGBx+0dIIu6lnpqEvLCK8KAYSvXJoXGGJDGlQS1s0yrUKkXeyOUt9qYprgRrHGwbllG0y0SVY4
	ne0VmBxJb/De0=
X-Google-Smtp-Source: AGHT+IGs2tukAAuVEYuoyvWSAIB55Pm8uLOrTuzGSfqj+LUZLTOqGV1IGLSl8HlgwDUbktyFC3gpDw==
X-Received: by 2002:a05:690e:2508:b0:644:60d9:7509 with SMTP id 956f58d0204a3-6466a91f1abmr672663d50.89.1766108423013;
        Thu, 18 Dec 2025 17:40:23 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6466a9219ecsm521431d50.13.2025.12.18.17.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 17:40:22 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id F36A8400AC5A; Fri, 19 Dec 2025 08:40:18 +0700 (WIB)
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Linux Media <linux-media@vger.kernel.org>,
	Linux DRI Development <dri-devel@lists.freedesktop.org>,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 19 Dec 2025 08:40:04 +0700
Message-ID: <20251219014006.16328-3-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251219014006.16328-2-bagasdotme@gmail.com>
References: <20251219014006.16328-2-bagasdotme@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1052; i=bagasdotme@gmail.com; s=Zp7juWIhw0R1; h=from:subject; bh=eU57T2ZpTrhAT3InMTPZqCoWbG3clhbzONj6eMsT294=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDJkuqxfNrogMCI4/WrDUaoO+3RymE3bV6Q+sNzRe2pcud Lf809ZTHaUsDGJcDLJiiiyTEvmaTu8yErnQvtYRZg4rE8gQBi5OAZiInxTDf4cMXcuuCb+M7mxc JlueWqmSuHnp9SdZCbMLqzXbzJpYIhkZLuu3a+wR9BT+vXnhUY+bUZ9Zb5hPXcn0objE7/XDOj0 HJgA=
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp; fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.174:from];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[29];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[mail-yw1-f174.google.com:rdns,mail-yw1-f174.google.com:helo,oracle.com:email];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,google.com,linux-foundation.org,gmail.com,kernel.org,oracle.com,infradead.org,suse.cz,ionos.com,arm.com,linux.ibm.com,linux.dev,konsulko.se,208suo.com,cdjrlc.com,inspur.com,gvernon.com];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A52E23F9B2
X-Spamd-Bar: --
Message-ID-Hash: CK4YDAJMGGAHJMTQNJ7BWRDCHP6HKSFP
X-Message-ID-Hash: CK4YDAJMGGAHJMTQNJ7BWRDCHP6HKSFP
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.com>, "David Hildenbrand (Red Hat)" <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Peter Zijlstra <peterz@infradead.org>, Vlastimil Babka <vbabka@suse.cz>, Max Kellermann <max.kellermann@ionos.com>, Ryan Roberts <ryan.roberts@arm.com>, Bagas Sanjaya <bagasdotme@gmail.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH mm-hotfixes 1/4] mm: Describe @flags parameter in memalloc_flags_save()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CK4YDAJMGGAHJMTQNJ7BWRDCHP6HKSFP/>
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
Acked-by: David Hildenbrand (Red Hat) <david@kernel.org>
Acked-by: Harry Yoo <harry.yoo@oracle.com>
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
