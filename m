Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AA665ADDE
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Jan 2023 09:07:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88B123EF45
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Jan 2023 08:07:50 +0000 (UTC)
Received: from formenos.hmeau.com (helcar.hmeau.com [216.24.177.18])
	by lists.linaro.org (Postfix) with ESMTPS id 00AA73E926
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Dec 2022 08:24:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au;
	dmarc=none
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.94.2 #2 (Debian))
	id 1pBAh4-00CHKd-2Z; Fri, 30 Dec 2022 16:24:47 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Fri, 30 Dec 2022 16:24:46 +0800
Date: Fri, 30 Dec 2022 16:24:46 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Rijo Thomas <Rijo-john.Thomas@amd.com>
Message-ID: <Y66gTtjZf5ZT0lP0@gondor.apana.org.au>
References: <651349f55060767a9a51316c966c1e5daa57a644.1670919979.git.Rijo-john.Thomas@amd.com>
 <20221215132917.GA11061@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <5771ea99-eef7-7321-dd67-4c42c0cbb721@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5771ea99-eef7-7321-dd67-4c42c0cbb721@amd.com>
X-Spamd-Result: default: False [-3.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_IN_DNSWL_HI(-0.50)[216.24.177.18:from];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:25820, ipnet:216.24.176.0/22, country:CA];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.890];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[formenos.hmeau.com:helo];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[apana.org.au];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 00AA73E926
X-Spamd-Bar: ---
X-MailFrom: herbert@gondor.apana.org.au
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QWKN6WR2MZCXRKPBL7BOVQHGIHORP4PM
X-Message-ID-Hash: QWKN6WR2MZCXRKPBL7BOVQHGIHORP4PM
X-Mailman-Approved-At: Mon, 02 Jan 2023 08:07:48 +0000
CC: Jeremi Piotrowski <jpiotrowski@linux.microsoft.com>, Tom Lendacky <thomas.lendacky@amd.com>, John Allen <john.allen@amd.com>, "David S . Miller" <davem@davemloft.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Mythri PK <Mythri.Pandeshwarakrishna@amd.com>, Jeshwanth <JESHWANTHKUMAR.NK@amd.com>, Devaraj Rangasamy <Devaraj.Rangasamy@amd.com>, stable@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] crypto: ccp - Allocate TEE ring and cmd buffer using DMA APIs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QWKN6WR2MZCXRKPBL7BOVQHGIHORP4PM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Dec 23, 2022 at 05:45:24PM +0530, Rijo Thomas wrote:
>
> > dma_alloc_coherent memory is just as contiguous as __get_free_pages, and
> > calling dma_alloc_coherent from a guest does not guarantee that the memory is
> > contiguous in host memory either. The memory would look contiguous from the
> > device point of view thanks to the IOMMU though (in both cases). So this is not
> > about being contiguous but other properties that you might rely on (dma mask
> > most likely, or coherent if you're not running this on x86?).
> > 
> > Can you confirm why this fixes things and update the comment to reflect that.
> 
> I see what you are saying.
> 
> We verified this in Xen Dom0 PV guest, where dma_alloc_coherent() returned a memory
> that is contiguous in machine address space, and the machine address was returned
> in the dma handle (buf->dma).

So is this even relevant to the mainstream kernel or is this patch
only needed for Xen Dom0?

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
