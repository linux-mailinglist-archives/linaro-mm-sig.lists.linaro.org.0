Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 257E073FEA0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jun 2023 16:44:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D88E3EF88
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jun 2023 14:44:27 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	by lists.linaro.org (Postfix) with ESMTPS id 6C9373EF35
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jun 2023 14:43:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=inria.fr header.s=dc header.b=orZaBSyF;
	spf=pass (lists.linaro.org: domain of Julia.Lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=Julia.Lawall@inria.fr;
	dmarc=pass (policy=none) header.from=inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=BSv2qibrxL39vitaWqz38N4RpcUIwxJv+1q57KgeapA=;
  b=orZaBSyF/DmIgjzGMdI3ecENh8T0Rpi5NjDgXjWmm0IiI0c/SJiqga6S
   Hm93XWBkr0orqShR+FhXfGY6HphUFavxbllc3ygUWsrJxZX7j+aOxBwD3
   465HZncpUz2LekQrVlyX8y8k6UOL6NQ6pfoYCkY6Uk8+n9vBNWAKwLPt6
   c=;
X-IronPort-AV: E=Sophos;i="6.01,162,1684792800";
   d="scan'208";a="114936323"
Received: from i80.paris.inria.fr (HELO i80.paris.inria.fr.) ([128.93.90.48])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jun 2023 16:43:51 +0200
From: Julia Lawall <Julia.Lawall@inria.fr>
To: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 27 Jun 2023 16:43:21 +0200
Message-Id: <20230627144339.144478-7-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230627144339.144478-1-Julia.Lawall@inria.fr>
References: <20230627144339.144478-1-Julia.Lawall@inria.fr>
MIME-Version: 1.0
X-Spamd-Result: default: False [-6.00 / 15.00];
	DWL_DNSWL_HI(-3.50)[inria.fr:dkim];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[inria.fr,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.134.164.0/24:c];
	R_DKIM_ALLOW(-0.20)[inria.fr:s=dc];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:2200, ipnet:192.134.164.0/24, country:FR];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[inria.fr:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,chromium.org,wanadoo.fr,kernel.org,collabora.com,codeaurora.org,redhat.com,arm.com,google.com,amd.com,lists.freedesktop.org,lists.linaro.org];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6C9373EF35
X-Spamd-Bar: ------
Message-ID-Hash: R6SB2GNUJP6OB2FLC5HM2I3GRX6SCZTM
X-Message-ID-Hash: R6SB2GNUJP6OB2FLC5HM2I3GRX6SCZTM
X-MailFrom: Julia.Lawall@inria.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kernel-janitors@vger.kernel.org, keescook@chromium.org, christophe.jaillet@wanadoo.fr, kuba@kernel.org, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 06/24] dma-buf: system_heap: use vmalloc_array and vcalloc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R6SB2GNUJP6OB2FLC5HM2I3GRX6SCZTM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Use vmalloc_array and vcalloc to protect against
multiplication overflows.

The changes were done using the following Coccinelle
semantic patch:

// <smpl>
@initialize:ocaml@
@@

let rename alloc =
  match alloc with
    "vmalloc" -> "vmalloc_array"
  | "vzalloc" -> "vcalloc"
  | _ -> failwith "unknown"

@@
    size_t e1,e2;
    constant C1, C2;
    expression E1, E2, COUNT, x1, x2, x3;
    typedef u8;
    typedef __u8;
    type t = {u8,__u8,char,unsigned char};
    identifier alloc = {vmalloc,vzalloc};
    fresh identifier realloc = script:ocaml(alloc) { rename alloc };
@@

(
      alloc(x1*x2*x3)
|
      alloc(C1 * C2)
|
      alloc((sizeof(t)) * (COUNT), ...)
|
-     alloc((e1) * (e2))
+     realloc(e1, e2)
|
-     alloc((e1) * (COUNT))
+     realloc(COUNT, e1)
|
-     alloc((E1) * (E2))
+     realloc(E1, E2)
)
// </smpl>

Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

---
v2: Use vmalloc_array and vcalloc instead of array_size.
This also leaves a multiplication of a constant by a sizeof
as is.  Two patches are thus dropped from the series.

 drivers/dma-buf/heaps/system_heap.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff -u -p a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -221,7 +221,7 @@ static void *system_heap_do_vmap(struct
 {
 	struct sg_table *table = &buffer->sg_table;
 	int npages = PAGE_ALIGN(buffer->len) / PAGE_SIZE;
-	struct page **pages = vmalloc(sizeof(struct page *) * npages);
+	struct page **pages = vmalloc_array(npages, sizeof(struct page *));
 	struct page **tmp = pages;
 	struct sg_page_iter piter;
 	void *vaddr;

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
