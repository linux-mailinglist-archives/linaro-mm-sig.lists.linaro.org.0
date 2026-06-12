Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RDjlJr0zLGpZNgQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 18:28:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3131D67AEC3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 18:28:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=I+SmgUzF;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 55E3240977
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 16:28:44 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	by lists.linaro.org (Postfix) with ESMTPS id 8C2EF40977
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 16:28:14 +0000 (UTC)
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2c0c3546924so7955575ad.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 09:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781281694; x=1781886494; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jAxTBIOEmfhpqt503+PoPJMs1ii7LUEnvcbZDbUBB0A=;
        b=I+SmgUzFgjEUg21YKYHZpv0/xE3MpOc+HFDU4Ug2ouHRAFT20crnQAzI8LDMtBodqm
         RhPPdcfvUV/tQVPedeHOy1/8czu7WYudWbTgZ/vHTQGmoFkpMw31alJIfeji0JG0BjmD
         /WX9p3OtH2dybtNRnyoVOh02b0vINW4lx8mHDnfrgTESHwVNbLiC1JpLehUf/933yLJg
         XzltY3D5KLw3vgFQqLDnmX96TUWsh2GhvayYEDBS6s3v+w3atzgAyUQRADDub9gmnZPu
         tkj/IGmjWaoj1nfNjd0om2qveHjfIUizheGO346wM0nb1XWaRmKeza3SOUIxU7sGSoKY
         DKwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781281694; x=1781886494;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jAxTBIOEmfhpqt503+PoPJMs1ii7LUEnvcbZDbUBB0A=;
        b=W96CvLByMrs+OIQ/Mla1swCyoKJ5uForDlEZnoUkQlCdMY/Krq+IMXJajWoLRPS4Jl
         hDM+6tEu7G7H7E3xUiEdkX6Etc/X1Jk+ehgNgfqkM+awOF19VB4xE/aEaJq+Pu7EGFsy
         olHUc2DuUENjYfEumcTqTd0Ulp/yd2I43KZCNBqR0qWG98SJ3aRz3hTzAGkc9Q0Bm6an
         GCX2o1MTRTBsGaQzXiOXvCTIIjknEqfDCje9d1T5ZXMjlrtp2C+w2mAHzTKqAS/cxNxJ
         hveRUrMeuJk9nDFE/1WxOIbTh6QV6Ggx7rWs8BBmJr17uE76RnIoz2bagaQTeKMUcSIT
         a4Nw==
X-Forwarded-Encrypted: i=1; AFNElJ+i+L8vOgPvrxJEgrK/G1irm6NTIaDOdZ2Y8kmgC67QaQDNkgnDVze4C6pPcF7Eobyh5QyO+dafkJpWzNXU@lists.linaro.org
X-Gm-Message-State: AOJu0Yz5iimCfQJ2FhGNYFipJyr3M8g2gpvNZdIJuNxtnd+JVClWAOzU
	KI1mPwZ5MUjFTfuePD3ffath7fjV3i/DYLOWG+wEAR9P62a7fq9XYZzP
X-Gm-Gg: Acq92OEXERSxKVPmOl/LaJB7IhmzyR8tlBah2WY9WoSzy6E/fuusdb2N5KCp/621OfU
	welyHrmahiBzNYp1zZ5jnJD+Rm8W3YJ6hZAbX7XAu0kAdj5p2x+y99nOmCUWIB18zPhLQnSoS35
	Qv9OdMvSp3COd9wwRN72LDFqvRNq7i/FGlXnFjKoumdUqHNYU+cGEL0rnlM/cTT13RyWGC0aqE+
	vF/ZBQo7JnQ1ybCjSLlx8IPZIKaO0M8YdtI2/TAgt20JkoDIjqsiVnkfYlpvNyHiazkXzfbPwCA
	0rB/ilk7xCEyRq/JTEuYV9fE3/1IMI7AxcioQccp1NzSke+VOssyIBt5ItVnsXk5Ok7cT/MSd30
	oLHD7W5Xmn/1Do1mbaYrjrQMgGhz82w2dSnb0jGCjlbBiml+T8dGCyicrObbSRK1I1r5EjsdS1O
	vteO5R6Djs/cvpBdeYU/xVTDB3WywpQg==
X-Received: by 2002:a17:903:1acb:b0:2c2:7e17:39f6 with SMTP id d9443c01a7336-2c6642c3dd5mr3387595ad.36.1781281693627;
        Fri, 12 Jun 2026 09:28:13 -0700 (PDT)
Received: from localhost ([2a03:2880:ff:73::])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c42f2e586bsm26830975ad.12.2026.06.12.09.28.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 09:28:13 -0700 (PDT)
From: Bobby Eshleman <bobbyeshleman@gmail.com>
Date: Fri, 12 Jun 2026 09:25:58 -0700
MIME-Version: 1.0
Message-Id: <20260612-tcpdm-large-niovs-v3-2-a3b693e76fcb@meta.com>
References: <20260612-tcpdm-large-niovs-v3-0-a3b693e76fcb@meta.com>
In-Reply-To: <20260612-tcpdm-large-niovs-v3-0-a3b693e76fcb@meta.com>
To: Donald Hunter <donald.hunter@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Shuah Khan <shuah@kernel.org>
X-Mailer: b4 0.14.3
X-Spamd-Bar: ----
Message-ID-Hash: FOA6UKVPL645XW7ZJGUIH45KJ2OPARNH
X-Message-ID-Hash: FOA6UKVPL645XW7ZJGUIH45KJ2OPARNH
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next v3 2/4] udmabuf: emit one sg entry per pinned folio
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FOA6UKVPL645XW7ZJGUIH45KJ2OPARNH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,amd.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,meta.com:mid,meta.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3131D67AEC3

From: Bobby Eshleman <bobbyeshleman@meta.com>

get_sg_table() emitted one PAGE_SIZE sg entry per page even when the
underlying folio was larger.

Instead, walk folios[] and emit one sg entry per folio. When folios
represent large pages (as is for MFD_HUGETLB), each sg entry is a large
page. Normal PAGE_SIZE sg tables are unchanged.

This is helpful for importers like net/core/devmem that expect dmabuf sg
entries to be size and length aligned. Prior to this patch udmabuf
handed over one PAGE_SIZE sg entry per page, so devmem only saw
PAGE_SIZE chunks regardless of the underlying folio size.

dma_map_sgtable() does not always merge contiguous pages for us, so we
do this internally before exporting.

Signed-off-by: Bobby Eshleman <bobbyeshleman@meta.com>
---
 drivers/dma-buf/udmabuf.c | 52 ++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 47 insertions(+), 5 deletions(-)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index 94b8ecb892bb..9b751dd98b12 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -141,26 +141,68 @@ static void vunmap_udmabuf(struct dma_buf *buf, struct iosys_map *map)
 	vm_unmap_ram(map->vaddr, ubuf->pagecount);
 }
 
+/* Return the number of contiguous pages backed by the folio at @i.
+ * A udmabuf may map only part of a folio, or reference the same folio
+ * in multiple non-contiguous runs, so folio_nr_pages() can't be used.
+ */
+static pgoff_t udmabuf_folio_nr_pages(struct udmabuf *ubuf, pgoff_t i)
+{
+	struct folio *f = ubuf->folios[i];
+	pgoff_t j;
+
+	for (j = 1; i + j < ubuf->pagecount; j++) {
+		if (ubuf->folios[i + j] != f)
+			break;
+		/* Same folio, but not a sequential offset within it. */
+		if (ubuf->offsets[i + j] != ubuf->offsets[i] + j * PAGE_SIZE)
+			break;
+	}
+	return j;
+}
+
+/* Count the contiguous folio runs in @ubuf, one sg entry per run.
+ *
+ * Coalescing folios into a single sg entry up front lets importers actually
+ * see large chunks. We can't rely on dma_map_sgtable() to do this for us as
+ * the dma_map_direct() path preserves the input scatterlist lengths verbatim.
+ */
+static unsigned int udmabuf_sg_nents(struct udmabuf *ubuf)
+{
+	unsigned int nents = 0;
+	pgoff_t i;
+
+	for (i = 0; i < ubuf->pagecount; i += udmabuf_folio_nr_pages(ubuf, i))
+		nents++;
+	return nents;
+}
+
 static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
 				     enum dma_data_direction direction)
 {
 	struct udmabuf *ubuf = buf->priv;
-	struct sg_table *sg;
 	struct scatterlist *sgl;
-	unsigned int i = 0;
+	struct sg_table *sg;
+	pgoff_t i, run;
+	unsigned int nents;
 	int ret;
 
+	nents = udmabuf_sg_nents(ubuf);
+
 	sg = kzalloc_obj(*sg);
 	if (!sg)
 		return ERR_PTR(-ENOMEM);
 
-	ret = sg_alloc_table(sg, ubuf->pagecount, GFP_KERNEL);
+	ret = sg_alloc_table(sg, nents, GFP_KERNEL);
 	if (ret < 0)
 		goto err_alloc;
 
-	for_each_sg(sg->sgl, sgl, ubuf->pagecount, i)
-		sg_set_folio(sgl, ubuf->folios[i], PAGE_SIZE,
+	sgl = sg->sgl;
+	for (i = 0; i < ubuf->pagecount; i += run) {
+		run = udmabuf_folio_nr_pages(ubuf, i);
+		sg_set_folio(sgl, ubuf->folios[i], run << PAGE_SHIFT,
 			     ubuf->offsets[i]);
+		sgl = sg_next(sgl);
+	}
 
 	ret = dma_map_sgtable(dev, sg, direction, 0);
 	if (ret < 0)

-- 
2.53.0-Meta

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
