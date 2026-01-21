Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMoiDrvzcGmgbAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 16:41:47 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C0035595F4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 16:41:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B721C401B8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 15:41:45 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by lists.linaro.org (Postfix) with ESMTPS id 1B7643F70E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 15:41:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=pEweZWe4;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.52 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-894724bc5cbso8451496d6.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 07:41:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769010099; x=1769614899; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ou8wYJVgke38aZatOGIOXXNbnvyF2AuO4MiXOCQfuAM=;
        b=pEweZWe4vYdwOtoRxVzEhSGaEleDyiFK0PjqW0bc09xvV4m/v3D7oE2A27ixZkn0F5
         P6SiMdJYoDICIJFT/EUTyvFyB1k2/V4E2IY0A2qDsazjMavufvWBuOfYk6NxrRbkLfLO
         GH8C0cq1bWN1djxV6j1rNXtZR06bduo9TwN4K89HG8jK2XksRWk8SBZJnKegBdBqjWbu
         nASwf5ngNYokR/dFDgoM3LkKCdhw4oTy/8w40KMuXx2BelcByYzZu0O+/hGXarxdiHS8
         SWRen+op7yTQIwrHLBMqS+0oSrWi7iFcnuzGuSsdZuJ/YUXcJTcv2fwcyGhn3+5dgcf0
         bsXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769010099; x=1769614899;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ou8wYJVgke38aZatOGIOXXNbnvyF2AuO4MiXOCQfuAM=;
        b=fc2Mqpzh7Ju/xo0Edd+t5puGGERk7mJmzAKCTz+DtS/lvbIaWFatVxcJFHG3M+WNAj
         xVVCvoy8z+6fD+NNIdyvCi7QI+bEIvyBoP1HQ2une2BwcpiLf9RLwRmzLwT4JRlDE1c1
         PGHLXMFOG0Bl+XazSgXnYaNaxCXEKdmSgOe2XFBT4kYPKmR2tq9a382VmAge85OlF2tr
         ST1/eLI22s5C0QjNiN0q+2cmOp7mOux3yRDqCbLSuSNAW3QARjr1ohqIoOGgB7TR7Swp
         QqWq8i2/oyl9ej5AqIkJS0gIepIHf21Ys2gQHs8z9fGbtlR0rp4gNVApcO/cbPcgnSQA
         YXQA==
X-Forwarded-Encrypted: i=1; AJvYcCXM+cZ2t225G88P4GMAPlzPqAi8WC6RK6FamNMWCetldwVKGBwbKzdPWUCbb/HmzN0/ze/BM2iHKXH7aesW@lists.linaro.org
X-Gm-Message-State: AOJu0YyjAVEEo9okNzQCyUB63uBSGKZhMzfZmZjeYbVWDrmgpYOPK+h+
	MGedeF6U9Up7krhi3VXtvAdGfPc2waXt01Y8FTCx+UmWWE5zm7HH41Z01aZXYuWc1+Q=
X-Gm-Gg: AZuq6aKUWzjwI1ml40/h2vr/5q+N1hCqUWGlqF/0zI7VbL6IU97Z6POQOU17Wc15J6g
	+mh3Z/1BNzcfAmvll3k6izXq6oeeYqVgb7unUVFxWGwzHK610ILXAmyzCdKIV0P6RAnG8p3j6od
	8kQVj3dtRRCjpoZgN2yI2om9+KF5Wc5ZRUCmN8qHvFhErt8FKU8vRt9ihVDxh/4jbkyj5/FTZmj
	bU0mQRHY2Wvvgwh3nGzE06kMWpmjjPD/TutyLIV6maRaMq9YKi8JcS/nAFlfW4f4RukVbv5QNka
	CnwYDhy5cvgMFQWCDXp/Si6M2+Wta3Qscarz5WNArBcGWLkPuarv7qjuLkW6xdAuTOBEHvNpq3s
	XD919eIoArjj7NZTKd1+A6azDkDevVrI6bUfw8HDpM48Aac+F5ZWxVvf4wKF0/F9tFUu58HRgYP
	nq12He5Fd96JMy5REEx+g75zjbJudDLsOUf2sO/QHpD7UOF6mB0NNgDOGNEcGo89jDJcLhARn5G
	cSg0g==
X-Received: by 2002:a05:6214:212b:b0:888:6fde:7b72 with SMTP id 6a1803df08f44-8942d7e0460mr262093776d6.32.1769010098574;
        Wed, 21 Jan 2026 07:41:38 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8946a1e3d28sm30951806d6.7.2026.01.21.07.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 07:41:37 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1viaKv-00000006EjK-1pDz;
	Wed, 21 Jan 2026 11:41:37 -0400
Date: Wed, 21 Jan 2026 11:41:37 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260121154137.GD961572@ziepe.ca>
References: <20260121-dmabuf-revoke-v4-0-d311cbc8633d@nvidia.com>
 <20260121-dmabuf-revoke-v4-8-d311cbc8633d@nvidia.com>
 <20260121134712.GZ961572@ziepe.ca>
 <20260121144701.GF13201@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260121144701.GF13201@unreal>
X-Spamd-Bar: ---
Message-ID-Hash: 6MCJIRM5SZ3MXEBGCCNBWBPGARA7V4MD
X-Message-ID-Hash: 6MCJIRM5SZ3MXEBGCCNBWBPGARA7V4MD
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists
 .linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 8/8] vfio: Validate dma-buf revocation semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6MCJIRM5SZ3MXEBGCCNBWBPGARA7V4MD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid,lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Queue-Id: C0035595F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 04:47:01PM +0200, Leon Romanovsky wrote:
> > We need to push an urgent -rc fix to implement a pin function here
> > that always fails. That was missed and it means things like rdma can
> > import vfio when the intention was to block that. It would be bad for
> > that uAPI mistake to reach a released kernel.
> 
> I don't see any urgency here. In the current kernel, the RDMA importer
> prints a warning to indicate it was attached to the wrong exporter.
> VFIO also invokes dma_buf_move_notify().

The design of vfio was always that it must not work with RDMA because
we cannot tolerate the errors that happen due to ignoring the
move_notify.

The entire purpose of this series could be stated as continuing to
block RDMA while opening up other pining users.

So it must be addressed urgently before someone builds an application
relying on this connection.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
