Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC3EAA6ECA
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 12:04:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8A9245512
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 10:04:13 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id 1A41E454F2
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 May 2025 10:01:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="ypn/IXlZ";
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.218.47 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-acbb85ce788so422098966b.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 02 May 2025 03:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746180070; x=1746784870; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1anNv4Z25lfJ6IEDtR0M/iXAZvESKw8M2gLCl/3GqgY=;
        b=ypn/IXlZX68caliHN6v4Xr4zwRExBxTasyPNdunu0DB0UJpXuHJmBMgiDsP0lIL/fs
         /kFIHECqPDvBA+mOCbMIQMQ4RzJnUwVxYyG6NVpLG3FfkjwfFhmS0Ug2GOGhxT3pe/Qr
         b18Sgmh93iuigIYdHLzg2xQPF0G5706ptLDwH/PBhHXOZrJc+Nvsk4vO2CkQkDrnpnF4
         HYfWmycLpbnzRkqYfoq8kbeI14yvpFk3BGXfKyc9xw1HCQMKUXXGHZbFpnSXZOEfBy4d
         9rileczck3Wj96FGBs4OV9dsjabljdmoFAKHKhTCNnDzLBCKvS5l8O0kxyMS/ZUtwOc5
         qJUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746180070; x=1746784870;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1anNv4Z25lfJ6IEDtR0M/iXAZvESKw8M2gLCl/3GqgY=;
        b=ZBjmufTjhkGLp00ebPO+Wt+F+shWTtS0C0ecGnlZsYCjYObfRuzO9gkSBTH88zL7H+
         LV50M9jqODG00RhibmrlhzevXLLasZq1FisBpkZkMe/RcBJYipiz0/WhNhXu9CxGpGQu
         CPqgTpq5ciZDT+GM77eqXNtuLp13NuIeGChalZOoTMg6pTe7oUA0sHpPWgnidhcgwr3P
         jD8XlI82AQop5rIyqx38vyd8urkhY1cr12wjfQzEfmvMn8xLHvpqy7id7w3yUEtp1xcs
         vyb17k8eeLbUSzme+v9Fapi9aw+Nx5+44WOtnzfsv2aCIEgmDnyy+4m8iDsCZFPGalW5
         P+UQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUYItO3f7AYuFMkx1TKPYtSzqY97ZYmKtdsh6nkYMchinQVYnqUKjIkQIpM/wM0A9A5HdIHfFW5nbTr3Za@lists.linaro.org
X-Gm-Message-State: AOJu0YyDj/E3N9P1apgCoeuH7joOWqMyI2QKCgqEZ7ueuWGkTj90QRVR
	kn9B3nxqcOwOlZJOCFWtdS9ab2G435RSy0RvP5BOy/nqK2zb0ZlDlKdH4onOeTHzZalFYo20bbj
	eEiQmJg==
X-Gm-Gg: ASbGncuRmBbiLd2gweuNJU+3jv5KoZp8SIOWAr3HfsAkp7trKVO1xnPkQZ/mFsjFs/R
	4t1YqEVIz62I1w96AfvArUyO9htyUsaN4B4FC0JDu3CMrvco/Q0nl356x9ac3y706ruLhONnSN6
	OuQkgJhX0AXicSGJ57y0mAikL8A9lN3YYkGmZeQpKQ8JjumnqxmdTstxn0jP4daRi6YO6MZ+OVP
	1IyfXmU82cI/EgBaFnEh/VaYBPZE6qsrGqB4S4tdTa0DBYnLfZcCOWA/a2E0eiPLOro0E0LP6PQ
	ckPudo7kmR/c/d6Jls5S6/0YZVpJ2Qqpnys6RxdCLtf0U8lWzh3l9JM5L6K+prYpjlOoHa4iLBH
	ylgltnzER1UNxsyshjg==
X-Google-Smtp-Source: AGHT+IGbNYwwYka0rS/o95u834QMshNlm6ZE08gyDe8QEBQfbOvJaJeikFzKXGrLN54PFU3NRdyFmg==
X-Received: by 2002:a17:907:7255:b0:ace:f2c2:5a4 with SMTP id a640c23a62f3a-ad17ad5d279mr201865366b.13.1746180070053;
        Fri, 02 May 2025 03:01:10 -0700 (PDT)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1891473a1sm26030566b.4.2025.05.02.03.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 03:01:09 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Fri,  2 May 2025 11:59:23 +0200
Message-ID: <20250502100049.1746335-10-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502100049.1746335-1-jens.wiklander@linaro.org>
References: <20250502100049.1746335-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1A41E454F2
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,linaro.org:mid,linaro.org:email,mail-ej1-f47.google.com:helo,mail-ej1-f47.google.com:rdns];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org,linux-foundation.org,kvack.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.47:from];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 7KMTZPVS562XB5Y3CUGYPN74LKVM4HRX
X-Message-ID-Hash: 7KMTZPVS562XB5Y3CUGYPN74LKVM4HRX
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, Jens Wiklander <jens.wiklander@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 09/14] cma: export cma_alloc() and cma_release()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7KMTZPVS562XB5Y3CUGYPN74LKVM4HRX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Export the two functions cma_alloc() and cma_release().

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-mm@kvack.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 mm/cma.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/mm/cma.c b/mm/cma.c
index 15632939f20a..c60901e73a26 100644
--- a/mm/cma.c
+++ b/mm/cma.c
@@ -915,6 +915,7 @@ struct page *cma_alloc(struct cma *cma, unsigned long count,
 {
 	return __cma_alloc(cma, count, align, GFP_KERNEL | (no_warn ? __GFP_NOWARN : 0));
 }
+EXPORT_SYMBOL(cma_alloc);
 
 struct folio *cma_alloc_folio(struct cma *cma, int order, gfp_t gfp)
 {
@@ -1002,6 +1003,7 @@ bool cma_release(struct cma *cma, const struct page *pages,
 
 	return true;
 }
+EXPORT_SYMBOL(cma_release);
 
 bool cma_free_folio(struct cma *cma, const struct folio *folio)
 {
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
