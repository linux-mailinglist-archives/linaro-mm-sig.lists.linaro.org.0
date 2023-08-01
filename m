Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AA579A901
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:50:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E24E83EF33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:50:05 +0000 (UTC)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	by lists.linaro.org (Postfix) with ESMTPS id E55193F0B4
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Aug 2023 17:12:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=eqleB+Pp;
	spf=pass (lists.linaro.org: domain of pintu.ping@gmail.com designates 209.85.217.47 as permitted sender) smtp.mailfrom=pintu.ping@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-447a4316052so563115137.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Aug 2023 10:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690909974; x=1691514774;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tjQ83+bP/eZvrnu5mLPteL9v32upNHucn015ldMT4Lg=;
        b=eqleB+PpZKRzf07CkM3xQAVn2NofBi6SMHQMVVOvtjj1yAdQkkEpzST4P2npF+ejbz
         6OeHxWZxrhXtqLOSpyOOfUpXFH2lHhWamSLonMZ1o9NLYn5M31P6SwoZhQMpsBD3Rgxi
         jKQMJxbGcSSl685ayD3GcRoQfH5mg2NTm8mJ0XSQfkMgIrKRafZUto7la0ReRcyYsYF5
         6g7JxTndHY8g7HTBuN5JR1VCzQCKdRmiz2umjOQr40oPXi6MbozGZp1POTJ+c2RgDyqb
         MBwz+LZfTd0zNq7XYymhuV448iJei5cgunB3imBi/pb/Bc6n3nGlkvRDpu8PdAC/v1zX
         /Muw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690909974; x=1691514774;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tjQ83+bP/eZvrnu5mLPteL9v32upNHucn015ldMT4Lg=;
        b=jKzNVe7KLUV3rtv+I4GYT2509xrHXjRGy+PBs7m9EGBT9R4EPD0HgOg/NlM4ZwfEZn
         Zl6aylg1haeCfDmsPk5rx8EYZQSUp0ehSyq3/JOx6JloUv1F5YjmS0P4OAgZFvKuVdJ9
         b+6IJdPSGb7/Gq5ThP+Dqmgl5ElHJMxn6/mzke69Jy6ZRoBY6WmTJMXb6jDjn5CTl/ZK
         ID+9NdZmH0xweZE8QtynTgT2XpavBrkpmI/jiYs5wdsxsRyvQCRILntSc67jo+aRp6Pj
         B/l3i3kpVlS6SMTqDVbz4c2GXWdJyd6PD1lc/Mf47tO166mPB8TbGEAG3hjSbAeLywJm
         TTTw==
X-Gm-Message-State: ABy/qLZJJYCLXEYuRWnq+MmOA9DtSFqkE5Iq5QwsTOL6rqtxu8vZkrQY
	TDuSkB5xR836QpIunvMmgFOnyxrDRfdY8g7G4nM=
X-Google-Smtp-Source: APBJJlGnBieFRVxRgawFgQeh8nMkgg8VXaX2ymYIkKzgsSDMdNymXxpqVlXrzhUS5zrV6ie9HEECZVtXFldDoVWXz7k=
X-Received: by 2002:a05:6102:8f:b0:447:48ab:cfe9 with SMTP id
 t15-20020a056102008f00b0044748abcfe9mr2671039vsp.5.1690909974270; Tue, 01 Aug
 2023 10:12:54 -0700 (PDT)
MIME-Version: 1.0
References: <1690598115-26287-1-git-send-email-quic_pintu@quicinc.com> <20230731112155.GA3662@lst.de>
In-Reply-To: <20230731112155.GA3662@lst.de>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Tue, 1 Aug 2023 22:42:42 +0530
Message-ID: <CAOuPNLjnfq1JefngtNrg0Q+JdMTSRz+eEqxGQJFfx9+af+k9WA@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E55193F0B4
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-0.109];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[lst.de:email];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.217.47:from]
X-MailFrom: pintu.ping@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NZAXONK3ZOCDYK5K6QIAFBKKTPQKCS6P
X-Message-ID-Hash: NZAXONK3ZOCDYK5K6QIAFBKKTPQKCS6P
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:44:49 +0000
CC: Pintu Kumar <quic_pintu@quicinc.com>, linux-kernel@vger.kernel.org, akpm@linux-foundation.org, linux-mm@kvack.org, robin.murphy@arm.com, iommu@lists.linux.dev, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-contiguous: define proper name for global cma region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NZAXONK3ZOCDYK5K6QIAFBKKTPQKCS6P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Christoph,
Thank you so much for your review and comments.

On Mon, 31 Jul 2023 at 16:51, Christoph Hellwig <hch@lst.de> wrote:
>
> Hi Pintu,
>
> On Sat, Jul 29, 2023 at 08:05:15AM +0530, Pintu Kumar wrote:
> > The current global cma region name defined as "reserved"
> > which is misleading, creates confusion and too generic.
> >
> > Also, the default cma allocation happens from global cma region,
> > so, if one has to figure out all allocations happening from
> > global cma region, this seems easier.
> >
> > Thus, change the name from "reserved" to "global-cma-region".
>
> I agree that reserved is not a very useful name.  Unfortuately the
> name of the region leaks to userspace through cma_heap.
>
> So I think we need prep patches to hardcode "reserved" in
> add_default_cma_heap first, and then remove the cma_get_name
> first.

Sorry, but I could not fully understand your comments.
Can you please elaborate a little more what changes are required in
cma_heap if we change "reserved" to "global-cma-region" ?
You mean to say there are userspace tools that rely on this "reserved"
naming for global cma ?
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
