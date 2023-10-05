Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8817B9D2E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Oct 2023 15:05:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34C7D40CDB
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Oct 2023 13:05:44 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	by lists.linaro.org (Postfix) with ESMTPS id 94AB13EFA7
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Oct 2023 13:05:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=casper.20170209 header.b=e8lzia3e;
	spf=none (lists.linaro.org: domain of willy@infradead.org has no SPF policy when checking 90.155.50.34) smtp.mailfrom=willy@infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Mkk02uRjKGFB4e8aG+3kpHFTSQxewntkAdfkHaxdesI=; b=e8lzia3eWGjc2IATz+le3lrKVu
	gOGiebot8NBca6IuY1/7+0Md+gtJwtDVfAHSbA0UWbreBJzbz2kT+hFv+RpLa6r5qqRoffNUXfRGU
	VA7jnn8XW5RZTzKlM7OWo4x9vALqRV3miM8Zj4Wp1GxFCK1GDxu9CMi+opvVuCBcDMsxrXr1VD/GA
	ISl5cGU9QCIbPRtkw/08b6pYXUxKIhk56rJaYx/OV4skaPAarzqcWN2klpsiXE8vITVUS0/02QcWn
	rDUIB+fTSXu4BQliJpqS6UwH588iRi1GdKAdsFAPCdE/peTEyKFsQeCaJqVQf6gemqeoarlPqa0Hy
	z8Nh6/3A==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qoO2h-009V8J-IJ; Thu, 05 Oct 2023 13:05:27 +0000
Date: Thu, 5 Oct 2023 14:05:27 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Oleksandr Natalenko <oleksandr@natalenko.name>
Message-ID: <ZR60lylMtLO6ZGp7@casper.infradead.org>
References: <13360591.uLZWGnKmhe@natalenko.name>
 <3254850.aeNJFYEL58@natalenko.name>
 <ZR6p4MpDbQpZiUSZ@casper.infradead.org>
 <22037450.EfDdHjke4D@natalenko.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22037450.EfDdHjke4D@natalenko.name>
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=casper.20170209];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:20712, ipnet:90.155.0.0/18, country:GB];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[13];
	NEURAL_HAM(-0.00)[-0.967];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[suse.de,lists.linux.dev,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,kvack.org,kernel.org,gmail.com,linux-foundation.org,linaro.org];
	DMARC_NA(0.00)[infradead.org];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 94AB13EFA7
Message-ID-Hash: CADFNGBAOYZET7Q7TBUOBAZ4QDRYZSDR
X-Message-ID-Hash: CADFNGBAOYZET7Q7TBUOBAZ4QDRYZSDR
X-MailFrom: willy@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Thomas Zimmermann <tzimmermann@suse.de>, Linux Regressions <regressions@lists.linux.dev>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [REGRESSION] BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CADFNGBAOYZET7Q7TBUOBAZ4QDRYZSDR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Oct 05, 2023 at 02:30:55PM +0200, Oleksandr Natalenko wrote:
> No-no, sorry for possible confusion. Let me explain again:
> 
> 1. we had an issue with i915, which was introduced by 0b62af28f249, and later was fixed by 863a8eb3f270
> 2. now I've discovered another issue, which looks very similar to 1., but in a VM with Cirrus VGA, and it happens even while having 863a8eb3f270 applied
> 3. I've tried reverting 3291e09a4638, after which I cannot reproduce the issue with Cirrus VGA, but clearly there was no fix for it discussed
> 
> IOW, 863a8eb3f270 is the fix for 0b62af28f249, but not for 3291e09a4638. It looks like 3291e09a4638 requires a separate fix.

Thank you!  Sorry about the misunderstanding.  Try this:

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index 6129b89bb366..44a948b80ee1 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -540,7 +540,7 @@ struct page **drm_gem_get_pages(struct drm_gem_object *obj)
 	struct page **pages;
 	struct folio *folio;
 	struct folio_batch fbatch;
-	int i, j, npages;
+	long i, j, npages;
 
 	if (WARN_ON(!obj->filp))
 		return ERR_PTR(-EINVAL);
@@ -564,11 +564,13 @@ struct page **drm_gem_get_pages(struct drm_gem_object *obj)
 
 	i = 0;
 	while (i < npages) {
+		long nr;
 		folio = shmem_read_folio_gfp(mapping, i,
 				mapping_gfp_mask(mapping));
 		if (IS_ERR(folio))
 			goto fail;
-		for (j = 0; j < folio_nr_pages(folio); j++, i++)
+		nr = min(npages - i, folio_nr_pages(folio));
+		for (j = 0; j < nr; j++, i++)
 			pages[i] = folio_file_page(folio, i);
 
 		/* Make sure shmem keeps __GFP_DMA32 allocated pages in the


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
