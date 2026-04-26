Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKMLEKEN7mmUqQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 26 Apr 2026 15:05:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FD9469E20
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 26 Apr 2026 15:05:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 92284404B1
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 26 Apr 2026 13:05:35 +0000 (UTC)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	by lists.linaro.org (Postfix) with ESMTPS id 0FD6E3F77F
	for <linaro-mm-sig@lists.linaro.org>; Sun, 26 Apr 2026 13:05:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=leVruY4C;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.217.45 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-612d8a59cc0so2935885137.3
        for <linaro-mm-sig@lists.linaro.org>; Sun, 26 Apr 2026 06:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1777208732; x=1777813532; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mZgLj8cyLE1pTCqai3ecepNuqq+WdEKm5C7L8MuPHFc=;
        b=leVruY4CEIVqZq7sReZEmlBKE+64C9weA5Q7YmcHz+xVHGsBReEUC0DS2vDufNqpBL
         boQgivZX0iPEgLA1B7uVvJEHwgZMWetc3gC6m42Chf68cgQE2PajqpfcrrC5fqICKCdY
         YgPXAW9hM8Tgmwuj7guY8kYk/H68s0Ne8X+ODpETiVRLJzn0kIvjYe5qpzm5YjUsvDWM
         I3FxpQxF+DyUOX4bRYFfGV26oEaSOQeqdRs/dv2cUcwYE7vvFRmNB944hoNj2YrOPk+Z
         fiPV4Q+tG/XBpR8qKV564x403xzOKURkduvyKnsthERGUBDmRDNxzfzgWGpeD/tB/PPj
         en8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777208732; x=1777813532;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mZgLj8cyLE1pTCqai3ecepNuqq+WdEKm5C7L8MuPHFc=;
        b=MD6vmSY468ODTGKCgobDsjIzIolb+NhKE37OHi5PdudTu8r1dY3qPKoeQz/jZHovSb
         WaBtTUUKR6PB++pqSNpY7ivYaYSrOQlaLnjcjdp8/nsf0nKmSz/Fi4P7YCqLoY8oaYK4
         USBguvto2W8/vQWOSBHY5m/4YcDAj0zbiPJ2jkIGTjOEUlA8pe7dIOQVwPnQvuKQmE+w
         tPNPVO2evfR/xP0EPqDAuEaDh63DlDI1zp4lzBTlUmFGUmUEZ2/E91oAJO7PJebriOt6
         qMI/p0R/tsZ0ZjJJuqisQXkzu00Mi1TQMokuuvfIIh0vxAcpa2fe+lV8EkcKhiPBzWs0
         N7Yg==
X-Forwarded-Encrypted: i=1; AFNElJ8wV0Hg5wC6dzxNKZ0zeKEvC9PRHTm17XaSJcwxNvIuvDfNGozw7FIYUbiCbRyx3aSWC7aw7pfw/m9fa/4J@lists.linaro.org
X-Gm-Message-State: AOJu0Yyj9ZWX+hO9NpdQTMcjRvAvNQZgHWIIFJwwvQsCaMWCIYgi+kb0
	snoRWyGYDim1GBmqhzpjpXK37G392G0/BeAPwRnnLncyVL0WLq311Noec3LgvY9hmdk=
X-Gm-Gg: AeBDiesLt7ihsVOhIzzEdG6lezcfb2cbkCPsYBM4PIBjI4Qgl1T6zdRsBh9irI9GcSj
	OIu8HsCx2hrx46NKY9cYyzcpJ5Sf2vgbW/R0satWhQjtFlS0VZdxEOHw6IrIjJiQTmdLIQNkqvV
	JNYDiNKlo/VzipomqYx3XMwQKTUA5jk29a1IsatMDCyBsWppUg90p6pyAE60z2xuN05U1Yv0K5L
	Qs7+jd6g4OU2K1K/jq0dquoRbmcscZrqvxkFY35GKi8FAks1CbiTvIkXwAqd2p/TZmjzGbMEIps
	7/uxpQ6+8tPZo8QQRGnwtX4SVYoTLaprvbdrMIw+J7hrN2TOswyQL53693v2fds1Z4zQFgNMPNe
	xlBnZY5x9R7acamQS8Uo95/iRPeCGdBTLXVhzP55jDKDCN3GB1NQzcjDXSV1vI4SfncXL4+mDBr
	78NcAU46o12AWuCtBW1t3HtJYNMcTUdy+yWu+hFM/wOo36ZVaVxs2vnQgQtpoNrQ/Apeyy9b+kz
	PfxK/G81UfelkUNZRW+Pgxvv6Y=
X-Received: by 2002:a05:6102:5e94:b0:610:1239:f6d7 with SMTP id ada2fe7eead31-616f772efecmr18253527137.18.1777208732488;
        Sun, 26 Apr 2026 06:05:32 -0700 (PDT)
Received: from ziepe.ca (crbknf0213w-47-54-130-67.pppoe-dynamic.high-speed.nl.bellaliant.net. [47.54.130.67])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8b02ae7df88sm249063966d6.35.2026.04.26.06.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2026 06:05:31 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1wGzAx-0000000Egs5-0CBA;
	Sun, 26 Apr 2026 10:05:31 -0300
Date: Sun, 26 Apr 2026 10:05:31 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>
Message-ID: <20260426130531.GF804026@ziepe.ca>
References: <20260325192352.437608-1-jiri@resnulli.us>
 <20260325192352.437608-2-jiri@resnulli.us>
 <yq5atst6ywbl.fsf@kernel.org>
 <4qdizkkoeke3cvkcf35upa7p7ick6s654eqlrizmi7ozkw5eze@tnpk2e34xgwl>
 <yq5awly0d504.fsf@kernel.org>
 <tteiecxfqy4k24wnzvp6ocxnuopyhmqtne2xwh5htwldlbzjnp@o6cbzdlurxld>
 <20260421121004.GA3611611@ziepe.ca>
 <yq5aik9jcpzm.fsf@kernel.org>
 <20260424225514.GE804026@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260424225514.GE804026@ziepe.ca>
X-Spamd-Bar: ---
Message-ID-Hash: O3BJ337TUZ5LTXWR4VTRG6BILIC4IJSZ
X-Message-ID-Hash: O3BJ337TUZ5LTXWR4VTRG6BILIC4IJSZ
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O3BJ337TUZ5LTXWR4VTRG6BILIC4IJSZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: B6FD9469E20
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]

> > static inline dma_addr_t dma_direct_map_phys(struct device *dev,
> > 		phys_addr_t phys, size_t size, enum dma_data_direction dir,
> > 		unsigned long attrs, bool flush)
> > {
> > 	dma_addr_t dma_addr;
> > 
> > 	if (is_swiotlb_force_bounce(dev)) {
> > 		if (attrs & (DMA_ATTR_MMIO | DMA_ATTR_REQUIRE_COHERENT))
> > 			return DMA_MAPPING_ERROR;
> > 
> > 		return swiotlb_map(dev, phys, size, dir, attrs);
> > 	}
> > 
> > 	if (attrs & DMA_ATTR_MMIO) {
> > 		dma_addr = phys;
> > 		if (unlikely(!dma_capable(dev, dma_addr, size, false, attrs)))
> > 			goto err_overflow;
> > 		goto dma_mapped;
> 
> I suspect P2P is probably broken on CC because this doesn't make
> sense..

Actually, I suppose it is fully broken because it will jump to swiotlb
and then should fail.

> This should flow into the
> phys_to_dma_unencrypted/phys_to_dma_encrypted block as well AFAICT, it
> shouldn't just assign phys. Assigning phys to dma on a CC system is
> always wrong, right?
> 
> It is is more like
> 
>         /* To be updated, callers should specify MMIO | CC_SHARED instead of
> 	   * implying it. */
>         if (attrs & DMA_ATTR_MMIO)
> 	   attrs |= DMA_ATTR_CC_SHARED;

So no need for this if, we can go directly to marking the MMIO callers
with DMA_ATTR_CC_SHARED once this is fixed for mmio:

>         if (attrs & DMA_ATTR_CC_SHARED) {
>  		dma_addr = phys_to_dma_unencrypted(dev, phys);
>  	} else {
>  		dma_addr = phys_to_dma_encrypted(dev, phys);
>  	}

Jasn
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
