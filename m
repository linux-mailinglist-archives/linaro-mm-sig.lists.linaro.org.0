Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KP6HKAM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:21:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1113B411A18
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:21:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E58040981
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:21:51 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by lists.linaro.org (Postfix) with ESMTPS id 682713F6FF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 14:22:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=AFrlEjI1;
	spf=pass (lists.linaro.org: domain of praan@google.com designates 209.85.214.172 as permitted sender) smtp.mailfrom=praan@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2a1462573caso88635ad.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 06:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1769005361; x=1769610161; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Df9DnST7C0sPqC8cKGnMiT7cxfRi0XBTWHY9JjLQ7zk=;
        b=AFrlEjI1W0nVFETkas+P5V+GzsY+FcXa0Fe7x7aNS4wNnziuIZqWIw99VN+OPKGoft
         xftIfX+M7yMNJbiOmM7rwGXst2n4KZSfccJs4dBsnRIR1q6TVHycdmwVAUNx5nX5Oa3m
         FV7YT656rzxMSy8ZChmcqYkhXAhwY88KvLw2XfY9r/Jitym8R0G3J8no7ZZOsHcgxoyZ
         H6g96rbIeNcsH5oseP3IDO0iB8k2L0PanBm/pj9fTlK+hKVLiPMIlrVcFLbDlPE9whQU
         SQydUcYfWVhUr02wya8o0/Z2PIefBQtSOIuRBhXHoWhsNGs9S4RBlNtu0u8t72I66zHE
         pSbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769005361; x=1769610161;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Df9DnST7C0sPqC8cKGnMiT7cxfRi0XBTWHY9JjLQ7zk=;
        b=mZDAXms2IF5RGbJqPPbNdcDYPQHDBvWO/+Zunzs5fQXuGxe20LmyK08XxUWk/y9nN/
         6GpNcqMJJCRKSyOaX5hXkzx58nzGi7+P+SNHaIdItvTzvrXVGLb7AolTQGRVHuVCchn8
         TZrtYsVUAC6XJeBJM8rBBzChIkcdWM6FqFZuszCB32KtcdsN6kGkxEXK64gJ02sjfhPJ
         FzxSeQ6VhjtXWKwQFIRKvf1CLnncSJeVpizVal7gIV0PkuxB+g2+utZ7+EvFFb42ouV6
         MiVoyvRK+FbGTwvgLjtPkbzR2t/VY7wVOr/ksd/r+ZlJo9WvCqo0p49SHEslRffIWbSI
         vC0w==
X-Forwarded-Encrypted: i=1; AJvYcCWQhihMvKIty0F9WC9tNfDUOPAGZTEDCN3SgEGGPYQ38Vu/6vUJ4Ci7H8zTC2c/Vukalyqj47IRosRaGAT6@lists.linaro.org
X-Gm-Message-State: AOJu0YxfC+EgiW+wDZV3ewpOdFKZsOOB9hdSpgCW4SaSqzfphUkcY5Ok
	LzVMx+54VP4+4584CZltW3QNU6abng+9XgWTE+QCFoT0nLdZfcOOPjyhSZqaQHiUsA==
X-Gm-Gg: AZuq6aKn6UQlCNbVTgUuRM+fb7jdOy4SmkiF4FYub61AUJIYzHqXAoG0t0mZ7pAWf0v
	kWHFJSFASpjOHEgTqmHYbH8F+9tzM/5c0D8pRlvqtmX6CTdmV9WUNb8xFnY4TBAzN0wbmO9lbYL
	v7PBLmJOYGbZRmo2julgZfGDY6p8k6jeWjWO6ZRtHbaKfUAK1mPWGIb5/ovfik00wqrZMlE8Xp0
	ThiBt/MF69+b85fYmbIrs2t/BOc5gIK4Z5w3/TxHqny8uJco2S/k4/7J1vNUzFdexfCy8MM9mjt
	IYkcx5eWyVwy1zNWq7LiZ3bTXlvGuOOBHrPlm/rzUNgXjES5/IyTI0ShhNhcPIK9wXCcpp+9N0W
	r5BUbr50BsWPZBLB94/4Ixm6skJEa5U56R0mDLWwUZ6S6yMLxbNaki6YRcbwRuHEkU8c/8ehV4Q
	el8k3bbZbP2QZmJYpSTTOMD5BL7VQT2qZFKeSJ4gQeewxsR2cs
X-Received: by 2002:a17:903:1c8:b0:295:5405:46be with SMTP id d9443c01a7336-2a7a23cc8f3mr2519245ad.1.1769005361111;
        Wed, 21 Jan 2026 06:22:41 -0800 (PST)
Received: from google.com (222.245.187.35.bc.googleusercontent.com. [35.187.245.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190ce6a9sm159451235ad.34.2026.01.21.06.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 06:22:40 -0800 (PST)
Date: Wed, 21 Jan 2026 14:22:31 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <aXDhJ89Yru577jeY@google.com>
References: <20260121-dmabuf-revoke-v4-0-d311cbc8633d@nvidia.com>
 <20260121-dmabuf-revoke-v4-8-d311cbc8633d@nvidia.com>
 <20260121134712.GZ961572@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260121134712.GZ961572@ziepe.ca>
X-Spamd-Bar: ----
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IJBTRVSAAJVHNMVSIRG7SAJ5PMTQB3FF
X-Message-ID-Hash: IJBTRVSAAJVHNMVSIRG7SAJ5PMTQB3FF
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:17 +0000
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-
 media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 8/8] vfio: Validate dma-buf revocation semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IJBTRVSAAJVHNMVSIRG7SAJ5PMTQB3FF/>
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
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
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
	NEURAL_SPAM(0.00)[0.931];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 1113B411A18
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 09:47:12AM -0400, Jason Gunthorpe wrote:
> On Wed, Jan 21, 2026 at 02:59:16PM +0200, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > Use the new dma_buf_attach_revocable() helper to restrict attachments to
> > importers that support mapping invalidation.
> > 
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  drivers/vfio/pci/vfio_pci_dmabuf.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
> > index 5fceefc40e27..85056a5a3faf 100644
> > --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> > +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> > @@ -31,6 +31,9 @@ static int vfio_pci_dma_buf_attach(struct dma_buf *dmabuf,
> >  	if (priv->revoked)
> >  		return -ENODEV;
> >  
> > +	if (!dma_buf_attach_revocable(attachment))
> > +		return -EOPNOTSUPP;
> > +
> >  	return 0;
> >  }
> 
> We need to push an urgent -rc fix to implement a pin function here
> that always fails. That was missed and it means things like rdma can
> import vfio when the intention was to block that. It would be bad for
> that uAPI mistake to reach a released kernel.
> 
> It's tricky that NULL pin ops means "I support pin" :|
> 

I've been wondering about this for a while now, I've been sitting on the
following:

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index a4d8f2ff94e4..962bce959366 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -1133,6 +1133,8 @@ int dma_buf_pin(struct dma_buf_attachment *attach)

        if (dmabuf->ops->pin)
                ret = dmabuf->ops->pin(attach);
+       else
+               ret = -EOPNOTSUPP;

        return ret;
 }

But didn't get a chance to dive in the history yet. I thought there's a
good reason we didn't have it? Would it break exisitng dmabuf users?

Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
