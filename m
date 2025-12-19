Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECA8CCE2A0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Dec 2025 02:41:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 721F34014E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Dec 2025 01:41:31 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by lists.linaro.org (Postfix) with ESMTPS id 75B05400F1
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Dec 2025 01:40:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="l/Z+xSLZ";
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.128.178 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-787da30c53dso12814647b3.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 17:40:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766108426; x=1766713226; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nd7dLSH/2LNPg9M+6OkqNEaj91DJZUUxPtMRLObk/CU=;
        b=l/Z+xSLZe5sY/xsRRsAUFTQoCbeVfEmrlY1tZnn3El2qa3vi0FL1pKoQWWDBd3Vr7M
         l7BSFkjvwJcj+ZfpexxshNCzMD7KKDFbhZZvCk/+i0CZs7ArswC+wQmIVotjj+OBF4J0
         lJlv/V4RxJidmhUcpznaL7Z6PVRuHeGfNb4OqL9N0XYPXUZ3n6HDOtiwKiiN9j2bXo/H
         TDshpbLDaLuaqEtN5108+goLpHNuWzdexiMR5zN7z33QqyCKw1EO1tZzwfZV4/OAVWim
         uJguHjQxaTt7YZ+el9fw9kOT88JsFh8+9lwDlVuvaynCANHI9i/raEYlIUnJFXyURWVx
         MKFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766108426; x=1766713226;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nd7dLSH/2LNPg9M+6OkqNEaj91DJZUUxPtMRLObk/CU=;
        b=vbYVSTcCt6fqotpxS+rXqE4OF7XhEqNDpAPPCeyU4FrnRo8f81N8XpZkFV+eml7l+c
         VeJvhbJAKjeGel1WvEELSFioQxiWo400Jr/MmELQJwfYsPfGvAGjev90umNBkKWoqTrq
         QKSDCehoLuypRCTU6P3dUxsqB7LBjGB2bOr+pgm3zuEJlM4yipUT/cYs25fC1WJ0r637
         OTGadGMRvLnTY/ZmQssKkfH9dtPL8SzmT2xhaKa7VOjP1qgU3ihqa0IE8llCUr2clB8t
         1ppakw7hCFTgSQAN1plNJj04VHwhYMgE9tRvi4DurQEw0mDWLo8iCRUz47CUhux32ET/
         aCbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWn/5PCNrZUO4Q1r0vKSW9VOpCd3QlSnaeG5dZa7MkSVuIywsx822TVczY+ZuTsceJFRQjz9aCOfSOVZ+Y2@lists.linaro.org
X-Gm-Message-State: AOJu0Yx43ooNuLtn8MOPFLDRQVJTcB+sYSg8jRPB5fqWS0xcrlVnIFjz
	gI14zZlIC/2uUYSi5J1cs8hVBZIKUQ2fQFWVpxGTCE/qpjiIJSt5bCR8
X-Gm-Gg: AY/fxX4yrkzqCEztGKywOHLnecFZQmUc1SNxusCiiGDxK5bczZ1nHev9IahQgBN1zsf
	5DZ7zJ9Cr1bUKNxeoiukA1iivq1Dt/apOypekzTKxOXbqaLh9IDa1/tPMm2ubM+9qeCvScmZFzG
	REmqkNDDF9YLWDVjGlPj1gImcTCPquhRTcaF/Y5fdY8Pwn+ffW23uncBHBGrOXOuqe2RtgyWA+L
	fLe/lCDqiBD0LdbgMoI4CdKNkgIE2HcNzkCI1T8HePctmCJiaFi349XZCoRWG1prUhr+zhA+2zE
	K40VaO7qjIBrGcZAG/XpDuYDMEQBFRb1QDRoJfQSzBWkwPNbuIxkBKxLUsNDS+UqwZNiikcczqF
	MfjD+FYz5t6r2eHa1s3/rvjcveelaVSxCehqkiP2/1F5UKzuR1jjIeFIKK+6kpAlY3ql0YqMgiW
	MD1SQelXdO4gA=
X-Google-Smtp-Source: AGHT+IGj4vErXkivNcPDaKm/hE3vqzn7Jv2EbveO2FMxfRHgUcrVUKUl63HP3M4rW9y9FyxrhRxuhQ==
X-Received: by 2002:a05:690c:a8e:b0:788:182b:a79c with SMTP id 00721157ae682-78fb41309d4mr10702687b3.35.1766108425857;
        Thu, 18 Dec 2025 17:40:25 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78fb4376692sm4362217b3.10.2025.12.18.17.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 17:40:22 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id BE85043916EF; Fri, 19 Dec 2025 08:40:18 +0700 (WIB)
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Linux Media <linux-media@vger.kernel.org>,
	Linux DRI Development <dri-devel@lists.freedesktop.org>,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 19 Dec 2025 08:40:03 +0700
Message-ID: <20251219014006.16328-2-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1015; i=bagasdotme@gmail.com; s=Zp7juWIhw0R1; h=from:subject; bh=RJRIAcyQjDA0Y8yZ/8Tu6N5h+KfYiqNdzVSLTNcjx6Q=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDJkuq+f5OYcHL0jrEuTKWuQ97emSvy6qUm0BRWeMGLrcl J5vdHXqKGVhEONikBVTZJmUyNd0epeRyIX2tY4wc1iZQIYwcHEKwESybBn+Gdbv7z63/Pnd28sP njM2YHx0zOL4JEkuEzeHcytM7BWSJjAy7D8We+uuyDHrtsBjHzMXb9rMJcEdymbdyWQWkGkSsmk BCwA=
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
	RCPT_COUNT_TWELVE(0.00)[29];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[mail-yw1-f178.google.com:rdns,mail-yw1-f178.google.com:helo];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.178:from];
	BLOCKLISTDE_FAIL(0.00)[209.85.128.178:server fail];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 75B05400F1
X-Spamd-Bar: --
Message-ID-Hash: OMLUPMENTASPOWYT6LPBLGDWFUWEK7AL
X-Message-ID-Hash: OMLUPMENTASPOWYT6LPBLGDWFUWEK7AL
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.com>, "David Hildenbrand (Red Hat)" <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Peter Zijlstra <peterz@infradead.org>, Vlastimil Babka <vbabka@suse.cz>, Max Kellermann <max.kellermann@ionos.com>, Ryan Roberts <ryan.roberts@arm.com>, Bagas Sanjaya <bagasdotme@gmail.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH mm-hotfixes 0/4] mm kernel-doc fixes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OMLUPMENTASPOWYT6LPBLGDWFUWEK7AL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Here are kernel-doc fixes for mm subsystem, based on mm-hotfixes-unstable
branch. This series is split from previous assorted kernel-doc fixes series
[1] with review trailers applied.

I'm also including textsearch fix since there's currently no maintainer
for include/linux/textsearch.h (get_maintainer.pl only shows LKML).

Enjoy!

[1]: https://lore.kernel.org/linux-fsdevel/20251215113903.46555-1-bagasdotme@gmail.com/

Bagas Sanjaya (4):
  mm: Describe @flags parameter in memalloc_flags_save()
  textsearch: Describe @list member in ts_ops search
  mm: vmalloc: Fix up vrealloc_node_align() kernel-doc macro name
  mm, kfence: Describe @slab parameter in __kfence_obj_info()

 include/linux/kfence.h     | 1 +
 include/linux/sched/mm.h   | 1 +
 include/linux/textsearch.h | 1 +
 mm/vmalloc.c               | 2 +-
 4 files changed, 4 insertions(+), 1 deletion(-)


base-commit: 980dbceadd50af9437257d8095d4a3606818e8c4
-- 
An old man doll... just what I always wanted! - Clara

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
