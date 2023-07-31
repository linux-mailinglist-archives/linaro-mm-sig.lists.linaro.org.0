Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4A57694B3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 31 Jul 2023 13:22:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E0A8E44354
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 31 Jul 2023 11:22:04 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id 015703F03B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 31 Jul 2023 11:22:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=none (lists.linaro.org: domain of hch@lst.de has no SPF policy when checking 213.95.11.211) smtp.mailfrom=hch@lst.de;
	dmarc=none
Received: by verein.lst.de (Postfix, from userid 2407)
	id 0EB0367373; Mon, 31 Jul 2023 13:21:56 +0200 (CEST)
Date: Mon, 31 Jul 2023 13:21:55 +0200
From: Christoph Hellwig <hch@lst.de>
To: Pintu Kumar <quic_pintu@quicinc.com>
Message-ID: <20230731112155.GA3662@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1690598115-26287-1-git-send-email-quic_pintu@quicinc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 015703F03B
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	AUTH_NA(1.00)[];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,linux-foundation.org,kvack.org,lst.de,samsung.com,arm.com,lists.linux.dev,gmail.com,linaro.org,collabora.com,codeaurora.org,redhat.com,google.com,amd.com,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	NEURAL_HAM(-0.00)[-0.952];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[lst.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[]
Message-ID-Hash: 5APNKRBCE44I2BLZMU3E2XAPK5QI3POC
X-Message-ID-Hash: 5APNKRBCE44I2BLZMU3E2XAPK5QI3POC
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, akpm@linux-foundation.org, linux-mm@kvack.org, hch@lst.de, robin.murphy@arm.com, iommu@lists.linux.dev, pintu.ping@gmail.com, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-contiguous: define proper name for global cma region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5APNKRBCE44I2BLZMU3E2XAPK5QI3POC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Pintu,

On Sat, Jul 29, 2023 at 08:05:15AM +0530, Pintu Kumar wrote:
> The current global cma region name defined as "reserved"
> which is misleading, creates confusion and too generic.
> 
> Also, the default cma allocation happens from global cma region,
> so, if one has to figure out all allocations happening from
> global cma region, this seems easier.
> 
> Thus, change the name from "reserved" to "global-cma-region".

I agree that reserved is not a very useful name.  Unfortuately the
name of the region leaks to userspace through cma_heap.

So I think we need prep patches to hardcode "reserved" in
add_default_cma_heap first, and then remove the cma_get_name
first.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
