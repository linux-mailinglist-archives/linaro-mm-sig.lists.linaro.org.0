Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFCED3B31D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 18:03:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83D4A40141
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 17:03:40 +0000 (UTC)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	by lists.linaro.org (Postfix) with ESMTPS id B55653F6B6
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 17:03:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=JQHQHMib;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.217.45 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5efa4229bd2so2974378137.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 09:03:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1768842214; x=1769447014; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xPF37M4OZRPT3BtJHYXM5EEOm0b3fHdtNnzMGWb7xcQ=;
        b=JQHQHMibefJ7vpt89/D9Nbeex9+eAWLBapG6bUaCqBtixtw9myjI4nDPsxT3DC5T/X
         EE2J3fz0HOdE7ATEgMeQd8TGhmZj5dx0/dU+Mn9Xh01N26JW/7vHMu3o43DygqdCPCU2
         eFhD55i+/BYB6ZHxEEXBua5mOwywTu6WIGfgI2tiOdZ2dm5j1CbBgqGxEfZt7MJKoQzv
         HYMyztDEoYNHuqHCOCNiq+Ufv90cj5p9buWDWUwswgu7EfrR4eJ4yhl6SmcYfDuQsPDh
         3JiOAJlc4aIFs5oQ66sMPT38uG3CQuFZ2wMwE66uILQZNUhSCk6PsjqVY/jxEw0lnziU
         oQrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768842214; x=1769447014;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xPF37M4OZRPT3BtJHYXM5EEOm0b3fHdtNnzMGWb7xcQ=;
        b=wJtvNzSQzlUvp0eKpXhHXvH0LRjC0dVLgfgYnRZPMvwQA0wvJKOVvTNl+IToDb6Kar
         +HHDK/5Wln2Oe7KuXYGjs76Jkf4EHqas9ayPCIDLh/56c5USORQTuXCt77STxX9CCOGY
         fXHXKByxxg4800RmCXn+UiysvimGZAZbD10YSkz7ZhWSdXW3ppjCTq7h0nbjx8rsvbM4
         cLHTlZ+mF8QCkcLS6hdHRBj0v6bUqAAWYWw7yHIAkd7FJvKh5MJfs3SLW2McPF5n+ByW
         6dY9gxQY1R1FhqVApr5Z7nTVDhGU/3Gri1p6c8MKjw7yTXXTAUvomSvwRnPizsMsTIV+
         SHXg==
X-Forwarded-Encrypted: i=1; AJvYcCVHQPN8IMl+wIZhDHGPHQLXAvJDtf1+4Chc0yDkMuiqfrTP/9Ev08Uqsckh9x4fmqjWWgECiiIfisdRmcgx@lists.linaro.org
X-Gm-Message-State: AOJu0Yy77E7B2r7whqFL5MAuY1mOYI0/AWKhZSClq2mVonBL7jZHW3Z8
	lizmKy8KnSpEKQmgOH5dFCtLzP3E719xQPJIw4+VJSg+No7u7ruty9GP4Ihh8ANpEvE=
X-Gm-Gg: AY/fxX4qfssGFNmJHJ/05cBc5sq6gCrFVRJDppYeF5UwtJRGMVTOB0Q5P7BTs5kuRZ2
	UZWigq8CV4c6PbHuh/cOZqobRVtJYQZS/kV2sVPeNAxvV4ssvIWZKM1/6Edl0a8Cr1PrHa2qY9y
	nMbo2LfBwcN1iM8nIsoMVKcEXb26s/gUyZzgYX1mfzzeme65Ua4CSmplQj36R0NH/QfG1kxTt8Z
	MYtguR6kU3dNK25nMtB5rpzHWTkr07gXyw3HgW5nKp4tz3h/vt6+E/ifydg9Nt3lS0Dutd/pL5Q
	WjdNz3jH9DADBYQvyUEr0c0fbl50G37JQpSaqOflbWLBen3JGK8KD9Ar0qVAHG9y6y2f5H09UzJ
	WpLITwUhSD3H+GjvYZ2auV5b4K/blvTmn/p3ZNV+5chIY2M92rcRdxYiBe/Qt50AE6klUfe1LnF
	tnMnKLxYeCjty3P2vkO4fVQhcmtlTMXiEvDuwQ/2PFZIb01eLwDN2Gc8aS0W2f+dX5t/o=
X-Received: by 2002:a05:6102:2ac9:b0:5db:d07c:218f with SMTP id ada2fe7eead31-5f1a55dacc2mr3505780137.40.1768842212920;
        Mon, 19 Jan 2026 09:03:32 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8942e6027c9sm90833946d6.13.2026.01.19.09.03.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 09:03:32 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vhsf5-00000005ITl-3vB3;
	Mon, 19 Jan 2026 13:03:31 -0400
Date: Mon, 19 Jan 2026 13:03:31 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260119170331.GJ961572@ziepe.ca>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-4-a03bb27c0875@nvidia.com>
 <bd37adf0-afd0-49c4-b608-7f9aa5994f7b@amd.com>
 <20260119130244.GN13201@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260119130244.GN13201@unreal>
X-Rspamd-Queue-Id: B55653F6B6
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.45 / 15.00];
	BAYES_HAM(-2.95)[99.80%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[amd.com,linaro.org,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[ziepe.ca];
	RCPT_COUNT_TWELVE(0.00)[31];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DNSWL_BLOCKED(0.00)[142.162.112.119:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.217.45:from];
	DWL_DNSWL_BLOCKED(0.00)[ziepe.ca:dkim];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.217.45:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: LKZTVNPNXGRHPC6ATI7RCTXZAFGOFYII
X-Message-ID-Hash: LKZTVNPNXGRHPC6ATI7RCTXZAFGOFYII
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.
 freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] vfio: Add pinned interface to perform revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LKZTVNPNXGRHPC6ATI7RCTXZAFGOFYII/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jan 19, 2026 at 03:02:44PM +0200, Leon Romanovsky wrote:

> We (VFIO and IOMMUFD) followed the same pattern used in  
> amdgpu_bo_move_notify(), which also does not wait.

You have to be really careful copying anything from the GPU drivers as
they have these waits hidden and batched in other parts of their
operations..

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
