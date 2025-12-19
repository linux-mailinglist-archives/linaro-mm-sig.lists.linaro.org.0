Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AA1CCE297
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Dec 2025 02:40:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78D1A4013E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Dec 2025 01:40:51 +0000 (UTC)
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	by lists.linaro.org (Postfix) with ESMTPS id 0C4FC400F0
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Dec 2025 01:40:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=ReAHjsfK;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 74.125.224.49 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-64472c71fc0so1083228d50.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 17:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766108424; x=1766713224; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lXujcQG4d4pSPfLnwY7QQ/B3L24bc/JbXH3UhT7rcLI=;
        b=ReAHjsfKe4jwG5fJaDK7yjy8Bhp0Y6pkpDUA80ekz07fSjFo0CI2joKWZSpMGKw+ME
         mRYb0keNp0txHs7uYiqo5xS+j+uGASuPbAUYpM+c4tLloz0W9m3Wdyy/pSlmugFc7aEV
         Z5OtNxBM24La7DpMOzlIORz68K0h8qLDmB2diwl5w5Dmr48Q6CYdYR8atbxdi6qlJVFb
         JQxTRuHohBoF8O4frW5SgDZcD+XkS3hAu+T7IArjqfGWnB+rCnPwuC0Wxq+J+R1vHqz2
         s7JQV8AOzeg3YE35xU1akh31k11c4JPYDQ3hNPD+W+poER0QP0Er1ohM/x/hnKNpzdxf
         H/Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766108424; x=1766713224;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lXujcQG4d4pSPfLnwY7QQ/B3L24bc/JbXH3UhT7rcLI=;
        b=MCZJMucRimsCC4JPkCgAB9NZcGZAVzUSAhCYes8MngWU9aRhZillxX7jgDhqXYhtSZ
         xL2D6YL5VUhWoEMSjly/K7e2mXEUZxXvbYwPr+6h8bT0/lXomxlZCLP6ASl7VfDF0dJO
         Xu+eCaPtmUQM+ssoDITjBnbK5MHKkeyxYwdjQ7uSBJ/68gTBcTvCxTGoP19nB9dvDhS6
         V5i+0+8k7+RrxYxOtJWrDAbr/GlpLf3sEjkKjGlSuoYCrP1As0TH2cdFIcAEzvVHCbrF
         p1PCTc3gLKdDcxUPA2PEyK0lb9NZc4a+AwPFvwhLhFSwfcw8k1y61IH7komA0S+vP60n
         TTmw==
X-Forwarded-Encrypted: i=1; AJvYcCWRPaVvsyDL2BJFec6GgoVFd5kBwtwf+ZGeCoCtvhr6GQuwZOgFXfrPcnGBz97n0WYBw5upCneKNBGoLAhf@lists.linaro.org
X-Gm-Message-State: AOJu0YygHFX6+KNCCwaWaw0tpNbwkv2OrZrTe5Lg1rHENd0j0QTqe5n1
	znkO3NHYqI9eygLupBNepG2tiRUtM5HAv6/nSIWU64J5MHy71cOmS8SJ
X-Gm-Gg: AY/fxX5xiXmMjCyUorCDFuw49o/SMrvVL8J2p5MKh35NEPQZm7jSzjsJWYAPh4c+3GT
	oWfdAuc8A2ya0iYPSSF0T9JvCka4uhYmU4SOe+IaeMH0a1qFV7QGzFtqbJkLR4Wax/OwPPS0saz
	15ZUE5sVvQw0BAZKdPQ1IBnz5jf8JCr5aa7CDtZWCRU+mVeZuxX3K3W/2E4aaYnt0dwNaC6dLLE
	6suT0bXxl6H8W/DSKHvUkGijaOyjKkkoaJuruvIgLKEkCWDWGJeHPk3PWH/E5mnopt6/Z6bkxhP
	PNxPHx4RnxoY/XJDNF75rW/4VUfsTz/n+p9qffJSMvudJajljrR2AEaqjtqldtzB71AhYlDNCv4
	QfLHncj7IJ/YRy6t/blsv1f4MnUmpmsPfhbfcD00Jx1LlGFvoe1HnWqPE18UbXckd0J9a5SohpY
	4W638VH9PPL94=
X-Google-Smtp-Source: AGHT+IEkhnBkI2xTy6+krjkg4oy487XdWneFBVKVRcd59MnMtD1xOFax36K9/qEz+okpBApxnUzeXg==
X-Received: by 2002:a05:690e:4102:b0:646:5127:9cde with SMTP id 956f58d0204a3-6466a8345d6mr1205460d50.14.1766108424525;
        Thu, 18 Dec 2025 17:40:24 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6466a92d91esm515295d50.18.2025.12.18.17.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 17:40:22 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id 5E2A74001B63; Fri, 19 Dec 2025 08:40:19 +0700 (WIB)
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Linux Media <linux-media@vger.kernel.org>,
	Linux DRI Development <dri-devel@lists.freedesktop.org>,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 19 Dec 2025 08:40:07 +0700
Message-ID: <20251219014006.16328-6-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251219014006.16328-2-bagasdotme@gmail.com>
References: <20251219014006.16328-2-bagasdotme@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=993; i=bagasdotme@gmail.com; s=Zp7juWIhw0R1; h=from:subject; bh=V7JnR2C4dn0LioMgl7WguO8w6hFl8CYJrTRxC+i2SGY=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDJkuqxc7T7vRwlFjGfXAJPPZEb6MmU3nPfJK+S1u/Pfr2 nAoY83ujlIWBjEuBlkxRZZJiXxNp3cZiVxoX+sIM4eVCWQIAxenAEzExpSRYbVy1V+uKhNfl31d 3tY/1yd5qPVxrz/kbjrv6KwU7VU7PzP8la6Z2vvv9mRZvSKz/YeLxOqYTjn7fuPIvP55y5Tuc40 LOAA=
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp; fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:74.125.0.0/16:c];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[29];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[oracle.com:email,mail-yx1-f49.google.com:rdns,mail-yx1-f49.google.com:helo];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,google.com,linux-foundation.org,gmail.com,kernel.org,oracle.com,infradead.org,suse.cz,ionos.com,arm.com,linux.ibm.com,linux.dev,konsulko.se,208suo.com,cdjrlc.com,inspur.com,gvernon.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[74.125.224.49:from];
	BLOCKLISTDE_FAIL(0.00)[74.125.224.49:server fail];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0C4FC400F0
X-Spamd-Bar: --
Message-ID-Hash: FGHUYQDUGKV4B2NIGMUHTS3PYUIY7O33
X-Message-ID-Hash: FGHUYQDUGKV4B2NIGMUHTS3PYUIY7O33
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.com>, "David Hildenbrand (Red Hat)" <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Peter Zijlstra <peterz@infradead.org>, Vlastimil Babka <vbabka@suse.cz>, Max Kellermann <max.kellermann@ionos.com>, Ryan Roberts <ryan.roberts@arm.com>, Bagas Sanjaya <bagasdotme@gmail.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH mm-hotfixes 4/4] mm, kfence: Describe @slab parameter in __kfence_obj_info()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FGHUYQDUGKV4B2NIGMUHTS3PYUIY7O33/>
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
Acked-by: Marco Elver <elver@google.com>
Acked-by: David Hildenbrand (Red Hat) <david@kernel.org>
Acked-by: Harry Yoo <harry.yoo@oracle.com>
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
