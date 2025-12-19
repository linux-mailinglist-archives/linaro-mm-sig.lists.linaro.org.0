Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF06CCE29D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Dec 2025 02:41:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E880B40144
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Dec 2025 01:41:15 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by lists.linaro.org (Postfix) with ESMTPS id 76151400F2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Dec 2025 01:40:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=HoH+3FrK;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.128.173 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-78e7a16e4c0so11431167b3.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 17:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766108425; x=1766713225; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hzPw2N/ioM2S0JlkpKSATVvxATE7Ky1v1N7KaRK6I20=;
        b=HoH+3FrKouxBE6bQg446r4zy/xjO/Y/0Iz3Rfe8kb4wotqt4imP0N7cvuhbPwcXEjS
         wItE36/ffuFS2pFHukJQapN5TwX8ahpHneJWH77kkAAzKS/u73KzburYB6gpABMjQAXV
         LAvZHAbmNSFUqwislhIvm9mYT5ceWjqnHSdGPyt/KXqJcYvkDhvWu+mc4roQMICRr1Xg
         6yrKYq6jwEp+qjSAvV30O2+irsIOkOq2+tdKMluBpbTQdouyNeT9yaiYusZXTmsLEh4p
         D7DyPLK2aO+zwS71/HvIqCn5TxJw3o/aMlXou+z+1LoMiMwM0o0OPh2Pqw1YZCFZPFbQ
         4ATQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766108425; x=1766713225;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hzPw2N/ioM2S0JlkpKSATVvxATE7Ky1v1N7KaRK6I20=;
        b=pOvLjNNM6Sy4NN/gLQx2mNo0D/kVOhpYjbp7j/MWDaNMTC1fIZLDApEq2JJEgzAz+v
         V0hNqab63yIQTmrLd3swvBR8Z40Ps3VAX29fxKxwoNdbBNqfzTINIJvFNb6uPTBfnz85
         qj+9Ad5qdaHCCWDKa3oqBh1hXNnQ7lPxFfkFzxR+/535idCokJSzGf9ZRIrbaN8gMeXh
         4vKRMd1mgUdhl3kTWUY8jIZchQv+R52z1Yr/FGJLf/klEI4Z2DES3yATuuHXf7BM2QRn
         u4Vl/5E6xfUaI0g4f/B3dUaMvkG1eSGydmZ+EdPc2mjwIOvGrKDd2alHoiL86AqY9Cfl
         R11g==
X-Forwarded-Encrypted: i=1; AJvYcCXjhZrNOelHwI78zij7RJe75bbymU2XV8tkitG3Y+hoK/kLNBa3JGjcAW1IwQaBq7sCCnIJD3flplOq6laa@lists.linaro.org
X-Gm-Message-State: AOJu0Yx7HX6DtzwvZ79Al8hlthh0KKJlD5kcJYuufnijwpX4uEAKTqL3
	lznOxUl8l+ELR9cm1tBy5O2+TGF6eujf08oGNmDWhUG9QoxIQ0WXFMnH
X-Gm-Gg: AY/fxX789IvaSUYLzluU8w8+Ye0oWbvJOS7M4Gjw2pAoQVSiD8/K539hhm7X2qjZXZT
	06ILIOiO3HywEe4gQj5GtAb7TPiSE3h+jL3AS8PBH93GEbM+KShXfqe8ciA3RcmcuIP+kdDAcLs
	+qtTO1Xb6XCdhSOo1Zc9OQ51k/z+iSe8WgM+obsnyhYghbhJJZ22Jf0N57uzObvpXi1yf9DJVal
	CH33hNHDITsukYIOybYYzOA2iNcA3okCnC9kPTWev5EZoV1kYxcLXFFNbacEq48jT6SKOC2/ny+
	NF7ABfr4eLfjnSRNhE+0PWdc6rHn2PMG+QIaop0SIT4Vu51CEp7mixQ/86ALWEFIyXc/BuxoBkV
	v21FkuLOTyGyqrP3yNTZVXjzfHlQcc4kL39g/HpUgQL9D49De674smBTBeMfjmO0xadsZGD8dFs
	RC/meHyUMLYQk=
X-Google-Smtp-Source: AGHT+IFlzEyRZbzDwokD8f3jVoeX8J+z1/v2Ahkwq9baLdKstEVjn+R/Ae3XQyq/3bI8aWngyy6zUg==
X-Received: by 2002:a05:690c:6e88:b0:786:581d:d517 with SMTP id 00721157ae682-78fb418761amr10808607b3.49.1766108424964;
        Thu, 18 Dec 2025 17:40:24 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78fb452c471sm4223507b3.45.2025.12.18.17.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 17:40:22 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id 407C14001B60; Fri, 19 Dec 2025 08:40:19 +0700 (WIB)
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Linux Media <linux-media@vger.kernel.org>,
	Linux DRI Development <dri-devel@lists.freedesktop.org>,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 19 Dec 2025 08:40:06 +0700
Message-ID: <20251219014006.16328-5-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251219014006.16328-2-bagasdotme@gmail.com>
References: <20251219014006.16328-2-bagasdotme@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1086; i=bagasdotme@gmail.com; s=Zp7juWIhw0R1; h=from:subject; bh=JzTmiFxxFP9ywosc1/PrB927sw9juQIkycc1i5dnVic=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDJkuqxfL7flauWn9i8K7y1seKHYf4ElsWpntmn/F9BrHv cQt816Ld5SyMIhxMciKKbJMSuRrOr3LSORC+1pHmDmsTCBDGLg4BWAifK2MDMtfy/t1mpS0fxQR Vz2l/DJPToqR86pIu8aK58c8u5SkOBgZbmtlrrPwncQzddJ0tvgj37ke9Pd/PJjntXapaWfqfVl rVgA=
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp; fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[30];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[mail-yw1-f173.google.com:rdns,mail-yw1-f173.google.com:helo];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.173:from];
	BLOCKLISTDE_FAIL(0.00)[209.85.128.173:server fail];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 76151400F2
X-Spamd-Bar: --
Message-ID-Hash: XDYUKIIRGYBHB4NXP5DU7RN2F2CG4W3S
X-Message-ID-Hash: XDYUKIIRGYBHB4NXP5DU7RN2F2CG4W3S
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.com>, "David Hildenbrand (Red Hat)" <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Peter Zijlstra <peterz@infradead.org>, Vlastimil Babka <vbabka@suse.cz>, Max Kellermann <max.kellermann@ionos.com>, Ryan Roberts <ryan.roberts@arm.com>, Bagas Sanjaya <bagasdotme@gmail.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>, "Vishal Moola (Oracle)
 " <vishal.moola@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH mm-hotfixes 3/4] mm: vmalloc: Fix up vrealloc_node_align() kernel-doc macro name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XDYUKIIRGYBHB4NXP5DU7RN2F2CG4W3S/>
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
Reviewed-by: Vishal Moola (Oracle) <vishal.moola@gmail.com>
Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 mm/vmalloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index 41dd01e8430c54..628f96e83b1187 100644
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
