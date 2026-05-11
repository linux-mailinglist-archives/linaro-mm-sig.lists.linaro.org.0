Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLDBFKY3AmrmpAEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2026 22:10:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D364251588A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2026 22:10:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 603EF3F92D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2026 20:10:12 +0000 (UTC)
Received: from fout-b7-smtp.messagingengine.com (fout-b7-smtp.messagingengine.com [202.12.124.150])
	by lists.linaro.org (Postfix) with ESMTPS id 507E83F7EC
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 20:10:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=PwYyRk+0;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="P AAEvCI";
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 202.12.124.150 as permitted sender) smtp.mailfrom=alex@shazbot.org;
	dmarc=pass (policy=none) header.from=shazbot.org
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.stl.internal (Postfix) with ESMTP id CAD7C1D000F5;
	Mon, 11 May 2026 16:10:00 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Mon, 11 May 2026 16:10:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1778530200;
	 x=1778616600; bh=w/jJechNkW7E0LVurksiul+ndqwmLEWiu+OGwNv1unw=; b=
	PwYyRk+0iVOdVXuz/8VHbIiLHEoKNhjSddEyaXI4WLxNed4oJB+5Hd6boIDLmO/X
	/ycckExDBc6GCMDrMGJeYACRebp/v3WoNnPNeQ5YCUHH6lShumpHk/31H/VbuO+W
	P+tiJDfPWC7vRhvDF3o6CdrHXJ070qqFnVGGub7+/4N/ylteHzNSEyguRiLuT5C7
	6xH8iee41Z1whvGDzQMnPoMPL+lBQbuuhFBjEnJ1iDGEerCARugWByAkPHE50KFZ
	yGQBgoJlr+2+LZUAo40GUHNB+vTO182BLawsAfKorM0uE6dL8hVwyJd6F7A6jMZ3
	3Y+D0PRD2GzL/JrNxHZ6fA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1778530200; x=
	1778616600; bh=w/jJechNkW7E0LVurksiul+ndqwmLEWiu+OGwNv1unw=; b=P
	AAEvCIe5WxftUxxaUKTnozoCRpp35QY7xXcr9srqzj2fGvDq3qzi14hsAmIyuPK1
	OB+HAzH49lwtmxPRVw0eirS8y2facxpbs8ZxjndVz4bDlikMLOrxERUxO03Q9YMq
	ZzrhKiGZuVqu7YMAFWykSQWwEqHdBUvGhZ+PsKRMDsQGH3yb5jQU53+BdA/TFo4B
	gt10A6T4pRem/APPpn0c3AUN3Ln6XFI1q8esHyXy1JeajIarBpHPa9xBFqZk1pwd
	MbCXCGNqd48pdPubwcMH5rLlxj14kksudMP1JHs8ODcSWrQ89ZkfSbBT6fp0q726
	qianrAnEfxsHjPzWeU+YA==
X-ME-Sender: <xms:mDcCanwZoBgY94pR6CgGx1aXMsUsiHtVgpAYsgsjUY0a_uGZ4HtnkA>
    <xme:mDcCator06ysxCDdBhVrXNTBxhoyxhyZoO9b2GFGS4wZWwKaIsc8Wqt4rHWFDwOQm
    JBc4Bv_-irhL3bMl7h2ZcrzFCEYdoU_3mpqToMXfyNF2JpvrSiIeqU>
X-ME-Received: <xmr:mDcCatVAs0PIpPycMEDa0aLxKAAYaat1b7iYqOm0xFH4xtZQgPIYVu-zc50>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdduudelkeehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkjghfofggtgfgsehtjeertdertddvnecuhfhrohhmpeetlhgvgicu
    hghilhhlihgrmhhsohhnuceorghlvgigsehshhgriigsohhtrdhorhhgqeenucggtffrrg
    htthgvrhhnpeekheejieetffefueeiteejtdejffdvleelvdeuvdffvdefteeghfevkeeu
    vdefvdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivg
    eptdenucfrrghrrghmpehmrghilhhfrhhomheprghlvgigsehshhgriigsohhtrdhorhhg
    pdhnsggprhgtphhtthhopedvtddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepmh
    grthhtvghvsehmvghtrgdrtghomhdprhgtphhtthhopehlvghonheskhgvrhhnvghlrdho
    rhhgpdhrtghpthhtohepjhhgghesnhhvihguihgrrdgtohhmpdhrtghpthhtoheprghmrg
    hsthhrohesfhgsrdgtohhmpdhrtghpthhtoheptghhrhhishhtihgrnhdrkhhovghnihhg
    segrmhgurdgtohhmpdhrtghpthhtohepmhhnghihrggurghmsegrmhgriihonhdruggvpd
    hrtghpthhtohepughmrghtlhgrtghksehgohhoghhlvgdrtghomhdprhgtphhtthhopegs
    jhhorhhnsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehsuhhmihhtrdhsvghmfigrlh
    eslhhinhgrrhhordhorhhg
X-ME-Proxy: <xmx:mDcCakqPSRoKzyPGGXProFqYhH4qYKpgflb8Spsx6bK2Yvak4Gd4uQ>
    <xmx:mDcCahGgEJbSVtbnpYLanu5mqQCGZRveGu3g79YLyppoXoJCZIjPIw>
    <xmx:mDcCamshnuz0U_drzHUfOKcWk73kxV1nW7PxZm4wDep0feme0jrxgA>
    <xmx:mDcCakRquOgmfyzbwC0uVpaxobRtcOQaDFkpxWtGwg4yfJK0yK_Dww>
    <xmx:mDcCam7wLKey_JuLtJOlx4ChD12laJy6R95rvUhqAlL9MfIcaz87pHbT>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 11 May 2026 16:09:58 -0400 (EDT)
Date: Mon, 11 May 2026 14:09:57 -0600
From: Alex Williamson <alex@shazbot.org>
To: Matt Evans <mattev@meta.com>
Message-ID: <20260511140957.25eb5d9d@shazbot.org>
In-Reply-To: <25a4fc45-1b4d-426b-954a-60bf21e9040f@meta.com>
References: <20260416131815.2729131-1-mattev@meta.com>
	<20260416131815.2729131-10-mattev@meta.com>
	<20260424183153.GJ3444440@nvidia.com>
	<20260426105215.GA440345@unreal>
	<20260427083644.4ee174cd@shazbot.org>
	<25a4fc45-1b4d-426b-954a-60bf21e9040f@meta.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 3TQWSORH3HUSJBL23LZVMONJYVFUX53H
X-Message-ID-Hash: 3TQWSORH3HUSJBL23LZVMONJYVFUX53H
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, alex@shazbot.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 9/9] vfio/pci: Add mmap() attributes to DMABUF feature
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3TQWSORH3HUSJBL23LZVMONJYVFUX53H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: D364251588A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[shazbot.org:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[shazbot.org:-,messagingengine.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:email,shazbot.org:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

On Mon, 11 May 2026 16:30:39 +0100
Matt Evans <mattev@meta.com> wrote:

> Hi Alex, Leon,
> 
> On 27/04/2026 15:36, Alex Williamson wrote:
> > 
> > On Sun, 26 Apr 2026 13:52:15 +0300
> > Leon Romanovsky <leon@kernel.org> wrote:
> >   
> >> On Fri, Apr 24, 2026 at 03:31:53PM -0300, Jason Gunthorpe wrote:  
> >>> On Thu, Apr 16, 2026 at 06:17:52AM -0700, Matt Evans wrote:  
> >>>> A new field is reserved in vfio_device_feature_dma_buf.flags to
> >>>> request CPU-facing memory type attributes for mmap()s of the buffer.
> >>>> Add a flag VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_WC, which results in WC
> >>>> PTEs for the DMABUF's BAR region.
> >>>>
> >>>> Signed-off-by: Matt Evans <mattev@meta.com>
> >>>> ---
> >>>>   drivers/vfio/pci/vfio_pci_dmabuf.c | 15 +++++++++++++--
> >>>>   drivers/vfio/pci/vfio_pci_priv.h   |  1 +
> >>>>   include/uapi/linux/vfio.h          | 12 +++++++++---
> >>>>   3 files changed, 23 insertions(+), 5 deletions(-)  
> >>>
> >>> Nice and simple
> >>>
> >>> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> >>>      
> >>>> @@ -1549,8 +1551,12 @@ struct vfio_region_dma_range {
> >>>>   struct vfio_device_feature_dma_buf {
> >>>>   	__u32	region_index;
> >>>>   	__u32	open_flags;
> >>>> -	__u32   flags;
> >>>> -	__u32   nr_ranges;
> >>>> +	__u32	flags;
> >>>> +	/* Flags sub-field reserved for attribute enum */
> >>>> +#define VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_MASK		(0xfU << 28)
> >>>> +#define VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_UC		(0 << 28)
> >>>> +#define VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_WC		(1 << 28)
> >>>> +	__u32	nr_ranges;  
> >>
> >> Alex,
> >>
> >> The TPH proposal extends the flags field in a similar way, but I suggested
> >> a different approach to conserve bits. At the moment, we spend three bits
> >> on a single feature, which feels wasteful.
> >>
> >> What do you think?
> >> https://lore.kernel.org/all/20260409120415.GF86584@unreal/  
> > 
> > I already proposed a very different interface for TPH that decouples
> > the dma-buf creation from setting the TPH values:
> > 
> > https://lore.kernel.org/all/20260423132016.4a25e074@shazbot.org/
> > 
> > This is overall less intrusive than the TPH change proposed, but it
> > could still make sense to align this as an operation on the dma-buf,
> > that can be probed as a separate feature.  Thanks,  
> 
> I'll add a VFIO_DEVICE_FEATURE_DMA_BUF_ATTRS in a v2 instead to get in 
> line with the TPH work, no worries.
> 
> For the benefit of future hackers, how would you describe the criteria 
> for adding flags to this existing field?  What hypothetical feature 
> characteristics would be appropriate?  (Maybe it's that these attrs & 
> TPH add scalar fields in several bits rather than a simple boolean.) 
> Two of us have independently added something that's turned out to be 
> inapproriate so some guidance would be good.

I think the question of how we actually expand an arbitrary grab bag of
"ATTRS" is the central question in whether we should implement the
interface.  If we follow the direction I suggested for TPH, maybe this
is just a VFIO_DEVICE_FEATURE_DMA_BUF_WC, where it supports only PROBE
and SET, with SET taking only the dma-buf fd to implement the one-way
promotion from UC -> WC.

If we support a generic SET ATTRS feature, we really need to map out how
flag bits are indicated as supported and how a user untangles failures
from trying to set various attributes.  If we end up with a feature
indicating each ATTR is available, we might as well have just
implemented a feature for each attribute.  Thanks,

Alex
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
