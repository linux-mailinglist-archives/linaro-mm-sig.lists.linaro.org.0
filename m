Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMUaNYFmHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:13:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 797B762875E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:13:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C3C24098D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:13:36 +0000 (UTC)
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com [209.85.215.202])
	by lists.linaro.org (Postfix) with ESMTPS id 75A703F4B6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 May 2026 17:33:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=bYnvR+aP;
	spf=pass (lists.linaro.org: domain of 3gdkVagUKDeITVEERKSSKPI.GSQPMREVS-QQ-WMKPMWXW.PMREVS.SVK@flex--praan.bounces.google.com designates 209.85.215.202 as permitted sender) smtp.mailfrom=3gdkVagUKDeITVEERKSSKPI.GSQPMREVS-QQ-WMKPMWXW.PMREVS.SVK@flex--praan.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pg1-f202.google.com with SMTP id 41be03b00d2f7-c82751074c8so15642139a12.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 26 May 2026 10:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779816833; x=1780421633; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=hcUFNVo2Sgdj71izYX2y2jUTakglUwC/840c4cOGT0g=;
        b=bYnvR+aPbrpdCPwQHDAz/1xx+5Imze5nuttx9WHmqUC1suW03v2/oqqzEdicHigFBu
         G97Jd17wNSyVS/QSPEvK70ICU3STzCQ2Do4DOWDXkqTyBp3iT+aRYWYPk5MOL2pS41Cq
         PfnOIPNOeSqEUTIm/R9fHkLqKRSLjOWL5qtLqXeuCNSRhekM05/irrljCXSAoUvtejto
         sImNFBe6HSJWb5Xz7PIqX+AG8XvQMjffe7jr6OcyNWILd+G+X/gwonUKVjb2v/Xf9R3U
         4EEBGpnuKqWobt3J+uIt0XBLA5XBsfqJrgYWy6fHUbKwd163PunGZA5EQl4pp7ctssBS
         wevg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779816833; x=1780421633;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hcUFNVo2Sgdj71izYX2y2jUTakglUwC/840c4cOGT0g=;
        b=ZB+MPufCDDetVg/zFQnDcGH6uQEkAYFvpkj/ADNYFJF1BYfLIRPXJ8skwnyiraRZIU
         fxvGeZC7twfzEaMV39lqhmzJUdIud9TBwU5xbKgv8g/yMbWNtCSKS1ii2y9P0dGfEW49
         Ot8JwIl1DgfHRxXyY/27SezTIzizIfu3Pk4WTim4mOi+NE7STD0Rpw1JhULdtabPTGTZ
         Zp6bEUme6F7Gy6e/Gu1HKyDQVi9TOeVJ5rYXRE/B/5iI7Rm7PxUJmWBPncD1ZGAsdiuc
         sVWUTsN4HUzlVrMV/sa27a+xyGpaqQFOahR+95XuvQYUAdIsDWIBXiEfGL+AWVibZQ2M
         +3GA==
X-Forwarded-Encrypted: i=1; AFNElJ9+WuGjHlRjCnLRn70PUuPMSxjxHwz6pcSagPE+S5wL/4ZCF57+QFjrgd5FQTqUoUrjsMxTXnhmxskqSyhj@lists.linaro.org
X-Gm-Message-State: AOJu0YzbyGjGp2qggW4NvJzF7VwEKcNFgYeD9uoO7YG5sBWZ6+1XqgDd
	A0G+HS7zL52g/N8BkW8BJHqdnnefMKTWVo/MAZwnyNv+TQGph/4g7tN62ek2dtFw+4xOrsU7gNs
	wGQ==
X-Received: from pgbfe22.prod.google.com ([2002:a05:6a02:2896:b0:c82:798f:6276])
 (user=praan job=prod-delivery.src-stubby-dispatcher) by 2002:a05:6a21:3947:b0:398:d6a9:fc9
 with SMTP id adf61e73a8af0-3b328cb9cffmr19853341637.5.1779816833191; Tue, 26
 May 2026 10:33:53 -0700 (PDT)
Date: Tue, 26 May 2026 17:33:50 +0000
In-Reply-To: <20260511214243.349487-1-xuehaohu@google.com>
Mime-Version: 1.0
References: <20260511214243.349487-1-xuehaohu@google.com>
X-Mailer: git-send-email 2.54.0.746.g67dd491aae-goog
Message-ID: <20260526173350.2359263-1-praan@google.com>
From: Pranjal Shrivastava <praan@google.com>
To: xuehaohu@google.com
X-Spamd-Bar: --
X-MailFrom: 3gdkVagUKDeITVEERKSSKPI.GSQPMREVS-QQ-WMKPMWXW.PMREVS.SVK@flex--praan.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BLIHS234RZ5MVWAIIZIULY4WOI7NPG2R
X-Message-ID-Hash: BLIHS234RZ5MVWAIIZIULY4WOI7NPG2R
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:13:10 +0000
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, kevin.tian@intel.com, ankita@nvidia.com, jgg@ziepe.ca, alex@shazbot.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, jmoroni@google.com, Pranjal Shrivastava <praan@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BLIHS234RZ5MVWAIIZIULY4WOI7NPG2R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[155];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_HAM(-0.00)[-0.918];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 797B762875E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 11, 2026, David Hu wrote:
> In case MMIO size is bigger than 4G, and peer2peer
> dma goes through host bridge, we trigger the code
> path to assign total linked IVOA, greater than 4G

Nit: s/IVOA/IOVA

> to mapped_len, and leading to a silent overflow

> Fixes: 3aa31a8bb11e ("dma-buf: provide phys_vec to scatter-gather mapping routine")
> Signed-off-by: David Hu <xuehaohu@google.com>
> ---
> drivers/dma-buf/dma-buf-mapping.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)

> diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
> index 794acff2546a..658064140357 100644
> --- a/drivers/dma-buf/dma-buf-mapping.c
> +++ b/drivers/dma-buf/dma-buf-mapping.c
> @@ -95,7 +95,8 @@ struct sg_table *dma_buf_phys_vec_to_sgt(struct dma_buf_attachment *attach,
>  					 size_t nr_ranges, size_t size,
> 					 enum dma_data_direction dir)
> {
> -	unsigned int nents, mapped_len = 0;
> +	unsigned int nents = 0;
> +	size_t mapped_len = 0;
> 	struct dma_buf_dma *dma;
> 	struct scatterlist *sgl;
> 	dma_addr_t addr;

Minor nit: Let's follow the reverse xmas tree format?
This looks correct to me, for this change:

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Apart from this, I see similar issues at other places:

  1. In calc_sg_nents(), nents is accumulated as an unsigned int. [1]
     If nr_ranges is very large, nents could also overflow, potentially
     leading to a small allocation in sg_alloc_table() and a subsequent
     out-of-bounds access in the mapping loop. It might be worth changing
     nents to size_t there and adding a check against UINT_MAX.

   2. In fill_sg_entry(), the loop variable i is an int [2]. Changing
     it to unsigned int would be more consistent with the nents type
     and safer for extremely large mappings.


Maybe, we should also fix these? For example:

diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
index 794acff2546a..ecf07ffca2b9 100644
--- a/drivers/dma-buf/dma-buf-mapping.c
+++ b/drivers/dma-buf/dma-buf-mapping.c
@@ -10,7 +10,7 @@ static struct scatterlist *fill_sg_entry(struct scatterlist *sgl, size_t length,
                                         dma_addr_t addr)
 {
        unsigned int len, nents;
-       int i;
+       unsigned int i;

        nents = DIV_ROUND_UP(length, UINT_MAX);
        for (i = 0; i < nents; i++) {
@@ -36,7 +36,7 @@ static unsigned int calc_sg_nents(struct dma_iova_state *state,
                                  struct phys_vec *phys_vec, size_t nr_ranges,
                                  size_t size)
 {
-       unsigned int nents = 0;
+       size_t nents = 0;
        size_t i;

        if (!state || !dma_use_iova(state)) {
@@ -51,6 +51,9 @@ static unsigned int calc_sg_nents(struct dma_iova_state *state,
                nents = DIV_ROUND_UP(size, UINT_MAX);
        }

+       if (nents > UINT_MAX)
+               return 0;
+
        return nents;
 }

Thanks,
Praan

[1] https://elixir.bootlin.com/linux/v7.1-rc3/source/drivers/dma-buf/dma-buf-mapping.c#L39
[2] https://elixir.bootlin.com/linux/v7.1-rc3/source/drivers/dma-buf/dma-buf-mapping.c#L13
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
