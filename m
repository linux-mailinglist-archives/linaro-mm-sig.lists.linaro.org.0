Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA42C6EF14
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 14:37:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D2E393F840
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 13:37:30 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by lists.linaro.org (Postfix) with ESMTPS id 3AEFF3F72C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 13:37:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=eAWfUHYt;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.51 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-8823dfa84c5so75098836d6.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 05:37:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1763559430; x=1764164230; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bEA8ekCp1nrcWXcrdpDKlGp67cbKmmAmKoKYvVWnAsI=;
        b=eAWfUHYt0MJ07uUj4QuUFuKye0jvyPCNaJMTLE5IQ5oEc4j/PZ7FPXIc7HOUfd+nig
         M1E+CNak/iQIAI2dmodAI1kBkdQCwPKgMg8UNCX/4wHhG4MwjF0/ZtOSsbRerdAW3Ve+
         FHSybkXinUJX1oGZDyuSAMeL7iF4ChrAtE3lT8/lxq5bMGuZ9foVGwJghyWbUee/7WOP
         4ab4srY5B0jQL6x9xdFWTRuRdlFzy4S1rKJYsHP5MHOCOI5N0+wIB7PIG5S7mOI0orj2
         e5QDvYae+7MKJnVqF0aorHge+kp14I1aOHP1ZGGM7NmwobASfw0wmZWeXbK+6Z+vQVQ8
         aZDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763559430; x=1764164230;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bEA8ekCp1nrcWXcrdpDKlGp67cbKmmAmKoKYvVWnAsI=;
        b=JjN+h47cC5k8hj4/udVad3kfHzZG8CQ3qJSwyL0DxNQMsd1H3GkD50JBn557PzLcg5
         E6yswnA78TUWJLGj7B9rmeq5UXlHWjwSmTeJwNeYWvPwec6r+4DORY7/WHKfDj+uwryg
         O5zkLnUqSr89JDMIkKp1vmDSFcF+icLhMtGBp+A6OCSk6OSyLa/Gqquc2K+BTg4T1zkj
         6JwiF4pxVWjscfZHrJ8d1XMkv12onxACQVBpo6XWewM7cTpZkAmgHTUb89j1QdAwWVE6
         hA0b+T7NuS1xa0qu+d7hm7uGPVA8XTMnB8FNKxYMVTN90u6wQ2gw9MWttQQyPnQx6jbH
         raoA==
X-Forwarded-Encrypted: i=1; AJvYcCXYkp6Ac0hcdyslGy6a/OqtzS2IHKcO+5PTIfX5Fi0KECzbhan3KI1X9MaZVosV/t/d3dyE4gdH28QpC/xU@lists.linaro.org
X-Gm-Message-State: AOJu0Yxuwo8DV3ggz/KsKaTxA6qAE/lZwVOIhvh7ep2ZufHHCOy2iy6r
	Jj5nD9FXWXrTpIa5brihn+muzqZOSW5OKKcKH+HFoWY9V/tWM50ndHG/MgTXaQhppWc=
X-Gm-Gg: ASbGncvaHvPz0gYgaVbtrsv0oJEOrpxf+X0E+8PdfcBD1PiR3mT7k9Cf2FQ7brOxi0J
	xbpQ+94GruyJSaMF2dpSw7FbT5TmpsA6L7pVU/l/Kgnemet4hPfyfd5Wj6zccJYjlLxR7BVw7R9
	XCJbNOoI8UmO0L69Dgk6yrqEGTM9ZBgYoDkTVNABa8ksjh2RUVWslPDeT/IMDXE6spxt6Ict3Ry
	0XiV7YNYxuwGDYOSeWCa8dadqgRDhufyTu/QROrGuEs5/Bj/AikqzrRJxkFxyqxK+lcgG6Aa96+
	P3GKMWJlfxDOBuQy9aITCgdS3QwFJ5ZHHW+cOYeFRrdF0k4zuA3eu9G1KU78Y0e6IWv9q6pzybE
	FZszgMSyucMwacYXiOJHpWK9OyWgA1MCyklEVR6sOej1wE5ifIEyzS4WlolpdjfWRQtSmQw+c9s
	vM/8N6o6/+2hCcDHzKTnLYWHq5rs4lfHJfext7SXuUrYIC9a+alj8y4Gsoq3qU46OauYU=
X-Google-Smtp-Source: AGHT+IGopBrMkEkq4/9KDO3x1qdzFmkcFO+Cz6Is5DlvxN8PyWRrz38DMZOLki2k1pBf80D+Z8AYkg==
X-Received: by 2002:a05:6214:419f:b0:880:22f3:3376 with SMTP id 6a1803df08f44-8845fc3e0f0mr26190076d6.10.1763559429603;
        Wed, 19 Nov 2025 05:37:09 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8828613962esm135128356d6.0.2025.11.19.05.37.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 05:37:09 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vLiMu-00000000ZAY-2EdI;
	Wed, 19 Nov 2025 09:37:08 -0400
Date: Wed, 19 Nov 2025 09:37:08 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20251119133708.GM17968@ziepe.ca>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <BN9PR11MB5276BC3C0BDA85F0259A35058CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20251119133000.GB18335@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251119133000.GB18335@unreal>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.51:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[34];
	BLOCKLISTDE_FAIL(0.00)[209.85.219.51:query timed out,47.55.120.4:query timed out];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DWL_DNSWL_BLOCKED(0.00)[ziepe.ca:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3AEFF3F72C
X-Spamd-Bar: ---
Message-ID-Hash: AIRD6XTWNM5M6Y7VSBVQWJFUY3ZAJXU6
X-Message-ID-Hash: AIRD6XTWNM5M6Y7VSBVQWJFUY3ZAJXU6
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Tian, Kevin" <kevin.tian@intel.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-d
 oc@vger.kernel.org" <linux-doc@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, Alex Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AIRD6XTWNM5M6Y7VSBVQWJFUY3ZAJXU6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Nov 19, 2025 at 03:30:00PM +0200, Leon Romanovsky wrote:
> On Wed, Nov 19, 2025 at 05:54:55AM +0000, Tian, Kevin wrote:
> > > From: Leon Romanovsky <leon@kernel.org>
> > > Sent: Tuesday, November 11, 2025 5:58 PM
> > > +
> > > +	if (dma->state && dma_use_iova(dma->state)) {
> > > +		WARN_ON_ONCE(mapped_len != size);
> > 
> > then "goto err_unmap_dma".
> 
> It never should happen, there is no need to provide error unwind to
> something that you won't get.

It is expected that WARN_ON has recovery code, if it is possible and
not burdensome.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
