Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MONMEzZQg2kalQMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Feb 2026 14:57:10 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C3716E6B71
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Feb 2026 14:57:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE0EA3F952
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Feb 2026 13:57:08 +0000 (UTC)
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com [209.85.222.193])
	by lists.linaro.org (Postfix) with ESMTPS id CB3F33F750
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Feb 2026 13:56:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=k92bVWw5;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.193 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f193.google.com with SMTP id af79cd13be357-8c9f6b78ca4so724736085a.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 04 Feb 2026 05:56:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1770213418; x=1770818218; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iRrqXVZVX7Z3YtbKGBkBfsPXFsl6FxGibC0bf/QAItY=;
        b=k92bVWw5Xo9x+ePXAtvHiI2zfjk4DKI2YAL/kdKv2GXUTt4p0iSJaOTyOFan5c8BWO
         +oitcCp9q8JEblxlelHAH2vvC9dHR0RbDa/1VvTOfPb+idOpD5+mmlV2cl2TccfklOty
         ACo2tSe+ZaZoBXstvYwJqNBE71MjYz2WTOR4VVYJv9+ToyBBi3Lz2xjWUEqfbOUP4f9q
         ZqRXe1iE/fTiDdhv0kBBVYM8rM7WFDo5dCztpZC6FZzysMduptrHoDLJ9dHb7d0KeAqU
         dvZndOzuDA+U+vK/WeDVpVJoJlvqfHGTOd5VyiBsN58zR7YcDZUWAbzIhy9yeNQzppqB
         Iruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770213418; x=1770818218;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iRrqXVZVX7Z3YtbKGBkBfsPXFsl6FxGibC0bf/QAItY=;
        b=vF4noY1BNrMOYnYas5S6JfWgIkNJ6d7hSB7ApKfXVSKLJbtimxdU1MMdMNHAgIiN0h
         hXUcEv8VP75FeY+rzlE/dphZDpSR7V0/yVkFVh75YfyJAl8Xtp5pV64OlUsfXim1MNEV
         tgiwUwNEvOXULXShDBxqPWwgrJUxUfR9Kvtb0GaYsG4xnP0BIxMC3hU1jre7uj6U/ltV
         naOC2wYUjU8x8kVDLCo5uRYdHMVSZyZLmo/8F7NcuA71qkbGuBRDwJbkeTcvKPS/764d
         5mWFxs7c4MHqXmOWcL8Fj3KOcpDpKohZ7okow8N8Jayni1nhi4cQ3d8VJ/jrfssSroh3
         /EZw==
X-Forwarded-Encrypted: i=1; AJvYcCXjAAh45ZGBCCMhw1LYwlDjYactFyF1BZpY1KhKrUnnIuKachCPfQ4noX9eX41jHrCVjOVSshsq5M9o6SQi@lists.linaro.org
X-Gm-Message-State: AOJu0YwrRO/2OpUwUb4JFWRKC+s8dyAvBHVV/qnqfgV0aOOhSp+hf/N8
	Ts4E8WE9yoH89oe9uD2bzZ50TgZAvtqQZjHkFr1L8THLbKzEtLaVV8IcNNRXlb4kl0M=
X-Gm-Gg: AZuq6aKB0wbYpIpGA1WcJ9fJT95dtUYJKkE3WgFTr5PfQCwFYvsfjYI7m4jYGIXgIBe
	V3MrRzQcmQXmPAze+Gy7BZroEn+aJbVUsbhMKjk96g0tnb7XARZnlGGtE8xiP0QE4pJeL6oCIbD
	wPIEZ0VpVoij1//91qEB20RnGRRqoo0w70m+fdjous2Y2/WiOBfBe5rUPhprlhZiKAtkqb3W9In
	HMjHnJ2vnDrWfgM5tfoSULK8eg2EvXhTrYXm6egJSGR9M//l77etKBMEeEylpYy+OWvHtA0XQFe
	C88HsJEk9GauQXfyKr1RJxxsWQrGQp2q58NMtgZk/FFGMp8YTLU5bGIYgYZAulmhne6JqZMiERY
	qbAgsHVp5zHCvH6kXox9LuTedFUsp9hPdh/bi+pdfsiygepmlHO/RST5TGR1BjRvZY/3F17pBed
	lJYX5+iKTxXJyLSfGGURdY9ddRPSVxKkirVdSm48M+kxtWU6lbCpEd2VT2AP4FquHuYh4=
X-Received: by 2002:a05:620a:3953:b0:8a1:21a6:e045 with SMTP id af79cd13be357-8ca2f82b068mr371751685a.19.1770213418187;
        Wed, 04 Feb 2026 05:56:58 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ca2fa552f2sm187407785a.11.2026.02.04.05.56.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:56:57 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vndNJ-0000000H1He-18eG;
	Wed, 04 Feb 2026 09:56:57 -0400
Date: Wed, 4 Feb 2026 09:56:57 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Maxime Ripard <mripard@kernel.org>
Message-ID: <20260204135657.GE2328995@ziepe.ca>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
 <20260202160425.GO34749@unreal>
 <20260204081630.GA6771@unreal>
 <20260204-icy-classic-crayfish-68da6d@houat>
 <20260204115212.GG6771@unreal>
 <20260204-clever-butterfly-of-mastery-0cdc19@houat>
 <20260204121354.GH6771@unreal>
 <20260204-bloodhound-of-major-realization-9852ab@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260204-bloodhound-of-major-realization-9852ab@houat>
X-Spamd-Bar: ---
Message-ID-Hash: YF7M4G47MZRRCNT6QRYDJQ6T2CA7SRIH
X-Message-ID-Hash: YF7M4G47MZRRCNT6QRYDJQ6T2CA7SRIH
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.
 linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/8] dma-buf: Use revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YF7M4G47MZRRCNT6QRYDJQ6T2CA7SRIH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,amd.com,linaro.org,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists,lists.linux.dev];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: C3716E6B71
X-Rspamd-Action: no action

On Wed, Feb 04, 2026 at 02:44:42PM +0100, Maxime Ripard wrote:
> > From what I have seen, subsystems such as netdev, the block layer, and RDMA continue
> > to accept code that is ready for merging, especially when it has been thoroughly
> > reviewed by multiple maintainers across different subsystems.
> 
> He said it multiple times, but here's one of such examples:
> 
> https://lore.kernel.org/all/CA+55aFwdd30eBsnMLB=ncExY0-P=eAsxkn_O6ir10JUyVSYdhA@mail.gmail.com/

Woah, nobody is saying to skip linux-next. It is Wednesday, if it
lands in the public tree today it will be in linux next probably for a
week before a PR is sent. This is a fairly normal thing for many trees
in Linux.

Linus is specifically complaining about people *entirely* skipping
linux-next.

> So, yeah, we can make exceptions. But you should ask and justify for
> one, instead of expecting us to pick up a patch submission that was
> already late.

I think Leon is only pointing out that a hard cut off two weeks before
the merge window even opens is a DRMism, not a kernel wide convention.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
