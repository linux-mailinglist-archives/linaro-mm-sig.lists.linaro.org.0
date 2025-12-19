Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 19118CCE2A3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Dec 2025 02:41:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D15A400F5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Dec 2025 01:41:47 +0000 (UTC)
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
	by lists.linaro.org (Postfix) with ESMTPS id 33E3B400F8
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Dec 2025 01:40:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=hVotw5dy;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 74.125.224.50 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-640e065991dso1149335d50.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 17:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766108427; x=1766713227; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TWXueLrhDneeDmCGizpSHzMSgAg8yMgxTmeT/qXEn+I=;
        b=hVotw5dyD5AgVXFeTLYY6+jXPYuZC9ccd0tBx/uYG0IQ/TlA4/IkYQkV4hdKxytmfe
         9MVe5d6qw25EalrdwvwpxsU7Kv0o+fcnkSPTSWLupiT8o/TzHUQ/A01SS96ohekxJY0K
         EPxshcWD7A/JyJk7LMpMVfGpCliChXoGx8M9i8jaWXKZ6nbhhWIWMrcN7MMVJHHX5FdM
         ph+ieXhvJhbQd278A7z4NGea50AS0EEWUns+snDI7SvfXooVF8PMceEqYCp3nLyNyHvF
         cWdovngKwi5qk9KnY8kWaVzJdFHFijczFuEu3AcZAc074je8UkFqCOU4fU4Kzr+i7/04
         4LKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766108427; x=1766713227;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TWXueLrhDneeDmCGizpSHzMSgAg8yMgxTmeT/qXEn+I=;
        b=YEvww0Tyt2ugySl+2/XMouFcyBIkfnBKX1qkltMaZHJjGbedkZRuCYUn3Qwu+8fgTy
         OdtHsaZPT9bU/cPkE5d4oMwtQCs2vIVfqEoc4lKsjDA7wHneWihUd9qRiecVZphscZ8H
         VH+O3eh8LBHkKKb88MQ9ugEhN+VI6+rm78y6Oj5waTMdNMCFiFr391I9x3vuLGkbxZgv
         UyQfNbh9xjVSaH11e4IFQR0FqYHxz7FqjNMV8DRy/r4EqvlB/xVLwHYmBslhLCZ7ibHw
         GAu3QILwDzyEuf9i6KRlNAguJz4LUzQG9tykQ+w8bfQnCnRYzj/AOMAW/D62tRh+A0Lc
         Rl6g==
X-Forwarded-Encrypted: i=1; AJvYcCVPtws3ztphmv6hq49X8HnYODPu/F22T6+fz57JNzBW4A5E4HEC4nREGFW1X/BNqfIsnW6lZd2la61L+MgM@lists.linaro.org
X-Gm-Message-State: AOJu0YwfPFNO7UruNgNw5owOsbIHYzjidOhEEoazAyLcrqdddxM7ooti
	fnBdoViFU9hPYBHmOTgl634zCSyTB27KQ6XhJOiPF8WAm5OjZuA7FHTPFvBtPee0
X-Gm-Gg: AY/fxX5A/EAHdjWiazfLQ+uEswl7f1Oue4R/WlglGer3ko+VQ1wC2z+HUpZOuGpF6NR
	NkEpFzQa3FOy3DZe5Gmh1AltOGAzEOaUHHZKz7Vt+PdFrODtn/X4SUhUAN6EMMojnIxRe+0s5EK
	CaDj+n7SjASLxsE91S0XHaFoOXBbFi2TDR4VgOlEquhnyY0xrBK65QbO/E6nGjInXWYggbN2sNh
	yF2zu20JQWKx/CW4/HWvZSEnbzw6GH0jQs1M/vWll+sXuwUewEHj/Mzg8F7VNErR+1h25AlP92+
	tljA21jWB2tDHAWvKGVOLqIpgbDEGSrrJXiZZY0fIoQfWAyrhtIytOqJLL1i/NG4nAckv4aNWkI
	sUY7Wwcfc269T9VDU2Eh4CCcY9XHE13xvHrgsf6Pi+WRIdmqbSuGnyDfEUtL2b/ue3E4jEX9oJ7
	U/1Fs3yG9q/9LSy0x4uvXSXw==
X-Google-Smtp-Source: AGHT+IH3p9ADp/oHBdoztOVSqKQjC9Vqk5imr82sTyt1OVvJnxpaC916KbcOtyFMgx08q9d2A6awgA==
X-Received: by 2002:a05:690e:1a20:b0:63e:145f:a4bd with SMTP id 956f58d0204a3-6466a849f02mr942310d50.22.1766108426712;
        Thu, 18 Dec 2025 17:40:26 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78fb43782bfsm4425717b3.5.2025.12.18.17.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 17:40:22 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id 27D7F4001B5F; Fri, 19 Dec 2025 08:40:18 +0700 (WIB)
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Linux Media <linux-media@vger.kernel.org>,
	Linux DRI Development <dri-devel@lists.freedesktop.org>,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 19 Dec 2025 08:40:05 +0700
Message-ID: <20251219014006.16328-4-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251219014006.16328-2-bagasdotme@gmail.com>
References: <20251219014006.16328-2-bagasdotme@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=896; i=bagasdotme@gmail.com; s=Zp7juWIhw0R1; h=from:subject; bh=1tOY86lhWOCbSHsqmK/tuDEilXGPwKXl/15tM3wSixs=; b=owGbwMvMwCX2bWenZ2ig32LG02pJDJkuqxc3vZ90ZFcEw8Rtxid2Hom5f4yhYqXFcq57N+59L vj0bM6pRR2lLAxiXAyyYooskxL5mk7vMhK50L7WEWYOKxPIEAYuTgGYiNE2RobF7lMmi/C/YzPS 7fCZWpbXxTBf8soDN/VTbIlqj6/Ud19jZGjc83oDg/Gns/PlE4ouzVAQWMm0aaeV5R+r5y+cjA4 wf+EFAA==
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp; fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_VIRUSFREE_BOTNET(2.00)[74.125.224.50:from];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[davemloft.net:email,suug.ch:email,mail-yx1-f50.google.com:rdns,mail-yx1-f50.google.com:helo];
	RCPT_COUNT_TWELVE(0.00)[31];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20230601];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,google.com,linux-foundation.org,gmail.com,kernel.org,oracle.com,infradead.org,suse.cz,ionos.com,arm.com,linux.ibm.com,linux.dev,konsulko.se,208suo.com,cdjrlc.com,inspur.com,gvernon.com,suug.ch,davemloft.net];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	BLOCKLISTDE_FAIL(0.00)[74.125.224.50:server fail];
	R_SPF_ALLOW(0.00)[+ip4:74.125.0.0/16:c];
	RWL_MAILSPIKE_POSSIBLE(0.00)[74.125.224.50:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 33E3B400F8
X-Spamd-Bar: /
Message-ID-Hash: 2SDWSK5XUXPXUAB6IC6ABQ74XYTRHANI
X-Message-ID-Hash: 2SDWSK5XUXPXUAB6IC6ABQ74XYTRHANI
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.com>, "David Hildenbrand (Red Hat)" <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Peter Zijlstra <peterz@infradead.org>, Vlastimil Babka <vbabka@suse.cz>, Max Kellermann <max.kellermann@ionos.com>, Ryan Roberts <ryan.roberts@arm.com>, Bagas Sanjaya <bagasdotme@gmail.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>, Thomas Graf <tgraf@suu
 g.ch>, "David S. Miller" <davem@davemloft.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH mm-hotfixes 2/4] textsearch: Describe @list member in ts_ops search
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2SDWSK5XUXPXUAB6IC6ABQ74XYTRHANI/>
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
