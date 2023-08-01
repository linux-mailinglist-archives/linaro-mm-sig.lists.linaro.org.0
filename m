Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2298076BAF9
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 19:18:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E8843F31F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 17:18:47 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id B27DB3F31F
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Aug 2023 17:18:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=none (lists.linaro.org: domain of hch@lst.de has no SPF policy when checking 213.95.11.211) smtp.mailfrom=hch@lst.de;
	dmarc=none
Received: by verein.lst.de (Postfix, from userid 2407)
	id AF5E46732D; Tue,  1 Aug 2023 19:18:38 +0200 (CEST)
Date: Tue, 1 Aug 2023 19:18:38 +0200
From: Christoph Hellwig <hch@lst.de>
To: Pintu Agarwal <pintu.ping@gmail.com>
Message-ID: <20230801171838.GA14599@lst.de>
References: <1690598115-26287-1-git-send-email-quic_pintu@quicinc.com> <20230731112155.GA3662@lst.de> <CAOuPNLjnfq1JefngtNrg0Q+JdMTSRz+eEqxGQJFfx9+af+k9WA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOuPNLjnfq1JefngtNrg0Q+JdMTSRz+eEqxGQJFfx9+af+k9WA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B27DB3F31F
X-Spamd-Bar: /
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	AUTH_NA(1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[213.95.11.211:from];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	NEURAL_HAM(-0.00)[-0.247];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[lst.de];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: Y4RVC3SF4TSXU66LEWB6BFI35USGFFOY
X-Message-ID-Hash: Y4RVC3SF4TSXU66LEWB6BFI35USGFFOY
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@lst.de>, Pintu Kumar <quic_pintu@quicinc.com>, linux-kernel@vger.kernel.org, akpm@linux-foundation.org, linux-mm@kvack.org, robin.murphy@arm.com, iommu@lists.linux.dev, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-contiguous: define proper name for global cma region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y4RVC3SF4TSXU66LEWB6BFI35USGFFOY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Aug 01, 2023 at 10:42:42PM +0530, Pintu Agarwal wrote:
> > I agree that reserved is not a very useful name.  Unfortuately the
> > name of the region leaks to userspace through cma_heap.
> >
> > So I think we need prep patches to hardcode "reserved" in
> > add_default_cma_heap first, and then remove the cma_get_name
> > first.
> 
> Sorry, but I could not fully understand your comments.
> Can you please elaborate a little more what changes are required in
> cma_heap if we change "reserved" to "global-cma-region" ?

Step 1:

Instead of setting exp_info.name to cma_get_name(cma);
in __add_cma_heap just set it to "reserved", probably by passing a name
argument.  You can also remove the unused data argument to __add_cma_heap
and/or just fold that function into the only caller while you're at it.

Step 2:

Remove cma_get_name, as it is unused now.

Step 3:

The patch your previously sent.

> You mean to say there are userspace tools that rely on this "reserved"
> naming for global cma ?

Yes.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
