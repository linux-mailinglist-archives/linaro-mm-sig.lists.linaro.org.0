Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEm7HKUM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:21:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 50808411A1F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:21:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F28F40692
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:21:56 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	by lists.linaro.org (Postfix) with ESMTPS id 45FA23F7BA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 14:47:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=M5qwef8z;
	spf=pass (lists.linaro.org: domain of praan@google.com designates 209.85.214.176 as permitted sender) smtp.mailfrom=praan@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a35ae38bdfso75375ad.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 06:47:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1769006859; x=1769611659; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BMkS4BFW7iikoL2BjP1nG2XKvn880JyWpxnGNG3+/cM=;
        b=M5qwef8zCBenynC/gAOBLUk+UXSiPLtibCMeVsJSLKwFOoOe5trL52Ib0Pj44vlS0n
         XzFC7g1JdSCG63UlI0oqXl21cqUtsenOuTtWAEM3sCVxpv2qhPeAHAY3WFxqbTZUc3+K
         rSUZdggzRlyPf3rYo6r3YDaVeh79VBFMG/GAvufcNSvCm4BS1mmvo4SGQaeUJYxdMNHY
         IqHn0OYwd5XzyFJ3/YPUOi9AkZAv48EkHGQ71Uur7A3wgvH8QolpaQ5kXQBbakn4hBmD
         Vq485PSWcV2TNQQoPXvIhRLNSo470Z7ZHwMqM6QVQM8YwlxQADsZ57VFpnaJ0GOP0pnQ
         KRKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769006859; x=1769611659;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BMkS4BFW7iikoL2BjP1nG2XKvn880JyWpxnGNG3+/cM=;
        b=XhdS03AdeAn1qzZnfIdR0pa9C4FfdzCwUixECUJ/TN/X8XF+kPSSGUhd8P2rpefk0q
         Z5l1KTXn5qGolG0P5ndnYlOudMPZrl6d24/T9A89FSBsDkaeCez1jl4OphRlqSbkeTSO
         eZ7VEiVhCYCosf+KvWg3C35xFLrPtiiI6FyfJj/pw1GI+ayos/Kz8wX5NUuNY4RZG4wK
         AfP/cVYaZ8aWAC5jBe63WTHQprWjBeCG36UAV2Ta0X0v/LbV5HX3ht1x90CHd08OyC0y
         QLoAxkyW556imfyGs2bjDSNtuNm2d7UMTEdB/546MqdxdUUKj4G+YUSMtgwbkTxqPy/o
         fxQA==
X-Forwarded-Encrypted: i=1; AJvYcCUGbpebH1oJ6+u5jzvrYCHzkR/YJKToE6CvF5W5olSVZ/wRmQyVUj5gLWRq1vAUrs5TiJJ1c9qEGNfiBMir@lists.linaro.org
X-Gm-Message-State: AOJu0YxbtR82XYjf+cDiw+RJMpbjSs1c/xgFQeXjEmw3BUaD6UOM98wT
	e58xpH0z3/mDixnfsz982ve475GQUUijt9h8p15BEnBKHl5/6gCnwhYx4ZlyYDrEdA==
X-Gm-Gg: AZuq6aL0LmII+rEV4AwiUeGKDjbWmdLjDbjKD93wX8hH5ihaoUAcYDFB2XMD6Pnyhh0
	ZMbegEKI6IOCW4hjt4eoqcRrGS45S5fSKF64pM6bDBiiWupfsyM/nS7gfyyoK3SFuLCzd2EpH4H
	+VW7MPBKaQKNnncSlGfZGQBJbHWmW8MTgUkaQ+tjam5/OcB8cuPDHOqBnjBXYt+A0BKRh03c4oS
	w2usqhn1gHmySQh8ZIyE0mEXaE+uRgToj6uWi+V9oasR1JCOE+Y/sQmBn5PGUSk7Pjmk+IRdrRm
	JUaYG6dl6DSs1z+xqHEN1mTA8MCRZT5x6r7vz1FQ6M2yZJnEd49tBayEDwE83tzvZBFQHlN07lt
	bI+dHuGiDyssS81o8nQ300fBCJhn4W/bZ83kEFjfkjfFLhBm20dhOeyUgT5adstSSO4DC8mT+T2
	8WDqdwIb9TKjP6YiHSoLD8ftkOKHLI807dOzsFMumQGusHKv+N
X-Received: by 2002:a17:902:dac8:b0:2a7:87c2:fcde with SMTP id d9443c01a7336-2a7a245b58cmr2655545ad.15.1769006858836;
        Wed, 21 Jan 2026 06:47:38 -0800 (PST)
Received: from google.com (222.245.187.35.bc.googleusercontent.com. [35.187.245.222])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa108b21fsm15434806b3a.13.2026.01.21.06.47.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 06:47:38 -0800 (PST)
Date: Wed, 21 Jan 2026 14:47:29 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <aXDnAVzTuCSZHxgF@google.com>
References: <20260121-dmabuf-revoke-v4-0-d311cbc8633d@nvidia.com>
 <20260121-dmabuf-revoke-v4-8-d311cbc8633d@nvidia.com>
 <20260121134712.GZ961572@ziepe.ca>
 <aXDhJ89Yru577jeY@google.com>
 <20260121142528.GC13201@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260121142528.GC13201@unreal>
X-Spamd-Bar: ----
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UMXTE6TF5GSYFV3JJK6M2AJKDLHJKPV4
X-Message-ID-Hash: UMXTE6TF5GSYFV3JJK6M2AJKDLHJKPV4
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:17 +0000
CC: Jason Gunthorpe <jgg@ziepe.ca>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-med
 ia@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 8/8] vfio: Validate dma-buf revocation semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UMXTE6TF5GSYFV3JJK6M2AJKDLHJKPV4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	DATE_IN_PAST(1.00)[2041];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[ziepe.ca,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[35];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.919];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 50808411A1F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 04:25:28PM +0200, Leon Romanovsky wrote:
> On Wed, Jan 21, 2026 at 02:22:31PM +0000, Pranjal Shrivastava wrote:
> > On Wed, Jan 21, 2026 at 09:47:12AM -0400, Jason Gunthorpe wrote:
> > > On Wed, Jan 21, 2026 at 02:59:16PM +0200, Leon Romanovsky wrote:
> > > > From: Leon Romanovsky <leonro@nvidia.com>
> > > > 
> > > > Use the new dma_buf_attach_revocable() helper to restrict attachments to
> > > > importers that support mapping invalidation.
> > > > 
> > > > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > > > ---
> > > >  drivers/vfio/pci/vfio_pci_dmabuf.c | 3 +++
> > > >  1 file changed, 3 insertions(+)
> > > > 
> > > > diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
> > > > index 5fceefc40e27..85056a5a3faf 100644
> > > > --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> > > > +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> > > > @@ -31,6 +31,9 @@ static int vfio_pci_dma_buf_attach(struct dma_buf *dmabuf,
> > > >  	if (priv->revoked)
> > > >  		return -ENODEV;
> > > >  
> > > > +	if (!dma_buf_attach_revocable(attachment))
> > > > +		return -EOPNOTSUPP;
> > > > +
> > > >  	return 0;
> > > >  }
> > > 
> > > We need to push an urgent -rc fix to implement a pin function here
> > > that always fails. That was missed and it means things like rdma can
> > > import vfio when the intention was to block that. It would be bad for
> > > that uAPI mistake to reach a released kernel.
> > > 
> > > It's tricky that NULL pin ops means "I support pin" :|
> > > 
> > 
> > I've been wondering about this for a while now, I've been sitting on the
> > following:
> > 
> > diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> > index a4d8f2ff94e4..962bce959366 100644
> > --- a/drivers/dma-buf/dma-buf.c
> > +++ b/drivers/dma-buf/dma-buf.c
> > @@ -1133,6 +1133,8 @@ int dma_buf_pin(struct dma_buf_attachment *attach)
> > 
> >         if (dmabuf->ops->pin)
> >                 ret = dmabuf->ops->pin(attach);
> > +       else
> > +               ret = -EOPNOTSUPP;
> > 
> >         return ret;
> >  }
> > 
> > But didn't get a chance to dive in the history yet. I thought there's a
> > good reason we didn't have it? Would it break exisitng dmabuf users?
> 
> Probably every importer which called to dma_buf_pin() while connecting
> to existing exporters as many in tree implementation don't have ->pin()
> implemented.

Fair point. I agree with Jason that we cannot leave this open for VFIO
and we can have a pin op that always fails.

But at the same time, I'd like to discuss if we should think about
changing the dmabuf core, NULL op == success feels like relying on a bug
I agree that it means the exporter has no mm, but I believe there should
be some way for the importer to know that.. the importer can still
decide to use the exported dmabuf while being aware.

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
