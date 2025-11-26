Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D755C8B5ED
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 19:01:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E2043F8E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 18:01:32 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by lists.linaro.org (Postfix) with ESMTPS id 70EBF3F806
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 18:01:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=jOnxTORd;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.43 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-8823e39c581so66156d6.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 10:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1764180071; x=1764784871; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jjSf74md9hV6abcmJUmAPy1uC1ZA/qAadY295f9z6us=;
        b=jOnxTORdXLSyqZAh9ZEZ2XoJYbSTDRu8Rp1IrdFTHdB80IMFoKnMDkhFz7yxIWCIVZ
         C9C8xjHkdIc4RASVaqtTDvrnxRAw9Yp20FmmiGjX/3YbPZKnYiduX4zMDBhNq6Dlu5MS
         kTy7lHfgnenCz58Fj7oaA2IhafXBCr5znPSJmjxCiTlw9N34n8oSuX9C2owPWhHcYAE3
         QVQkTpSY9DxnhiYJ6TV/KRaMhro8yNaL6uNr7x6PcT9jWx7SX5ruiiFFL+vEPyluLx9P
         WtERgd9Zp7HmI8mxCPXP6YEM77qWjLlJIluFOzO3oyj3Nlm3hQmu1hf3uyWPJbI/seFc
         n1IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764180071; x=1764784871;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jjSf74md9hV6abcmJUmAPy1uC1ZA/qAadY295f9z6us=;
        b=gdZVSDhUXCWEqY2GmuDp2T70oerrye5l+0QoSefek14oFm6ZnqHrOtCJgvlF31s+9u
         I1DdKdD0jokYmPoCY2BphVPbOPpr7jlnH2oDXpiV5Yl5bL1trlpFC08JBH6vVqLAmx6J
         w9m4DvEjFQIVH67/jWZukovul3DLk9PwfeqZ03OtT9RWqWC/R8EnyD5EW7BuwL21UM1y
         1ivxa45wOGEGKa522AXxbJyZwlKQg4qgB8q5bVTyyboAkGR+huzxPCqlA1BFx8vsi59m
         InsEuFqbb37Gnkpw9vXkeVzNf2jUeyCr0ty3850sbZzA3BK9u+aDD7FtzBsZcndEdlSZ
         ONNA==
X-Forwarded-Encrypted: i=1; AJvYcCVGUsi4Fm4l7dz5u1BwTAmCotrbpt3JnPcax6swFAUT3xmhU6OchibNdqQwoHDX+UIC3TiYChmfjHGvyqcC@lists.linaro.org
X-Gm-Message-State: AOJu0YzAfOs1gw+tK/QsMaFQkPlQeAFiz46YCokpeEq4Uzaqb97vkti8
	ziP6lPnQ60xg8NFL9gtmcgGCMfF1uQ4OoQOOQrIWNW7rT4Qm/AM1UuQ5bdJKuBp/i3E=
X-Gm-Gg: ASbGnctAp2PIyvhb11bbMjf1illWMpv5giaNpqWVa9NmrbZUd68vVPLYKBZgDuRRnO1
	fTHJ7cV5czkj4Mh3d3u3GNRu6Pr3R+of/kNBioNatbxurTZd/brw1wcwLwBXYX5fsuZmq/5mugG
	8G3nNCu7YPvYJYwCHyfoeA2nP/aEyY32yx4PNExQ21L6jvHKBh2HxWYAvK8tgx+0ERvMu4mf4D6
	UBCl47v3iXBHk1OYvP2fkpgccDOjviO8RPA1N3cJZoBGy8/1TgzirixODRNhSa6kx2z2xGmWduR
	svS+A+dhazoxPIpl53CmNU3e8XgmcmoTdow+HZk4xJw+jbuBgERSRJdTng9P+mnSZG6tqrxrJ1v
	S/VfqjwdtJc8R1jxwnPZhdxOwGMbixL70znigHoJQJSUw5UkPvf5y53iKmemoecLJ9nStYeQH5P
	FR/JNqUeuuxbyl1SO6mAUihz/Qik3JtAff0arQ57YPgQLsxFQl5+QsoVx7
X-Google-Smtp-Source: AGHT+IEAvNp+zRI8SnZtBMAoTCcW9PsOn0UFKbLCX0nJH/mWJ9Vruy3K7nib32RLaHWbWg9aiKoVNw==
X-Received: by 2002:a05:6214:3113:b0:882:36d3:2c60 with SMTP id 6a1803df08f44-8847c4ccefamr223992386d6.19.1764180069440;
        Wed, 26 Nov 2025 10:01:09 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8846e447272sm148376376d6.5.2025.11.26.10.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 10:01:08 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vOJpD-000000033ob-2pNk;
	Wed, 26 Nov 2025 14:01:07 -0400
Date: Wed, 26 Nov 2025 14:01:07 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Alex Mastro <amastro@fb.com>, Alex Williamson <alex@shazbot.org>
Message-ID: <20251126180107.GA542915@ziepe.ca>
References: <20251125-dma-buf-overflow-v1-1-b70ea1e6c4ba@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251125-dma-buf-overflow-v1-1-b70ea1e6c4ba@fb.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.43:from];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 70EBF3F806
X-Spamd-Bar: ---
Message-ID-Hash: J42VDKF3JTKEEPJ4BXDJDWJDU7AAOSE2
X-Message-ID-Hash: J42VDKF3JTKEEPJ4BXDJDWJDU7AAOSE2
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Nicolin Chen <nicolinc@nvidia.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, kvm@vger.kernel.org, Ankit Agrawal <ankita@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix integer overflow in fill_sg_entry() for buffers >= 8GiB
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J42VDKF3JTKEEPJ4BXDJDWJDU7AAOSE2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 25, 2025 at 05:11:18PM -0800, Alex Mastro wrote:
> fill_sg_entry() splits large DMA buffers into multiple scatter-gather
> entries, each holding up to UINT_MAX bytes. When calculating the DMA
> address for entries beyond the second one, the expression (i * UINT_MAX)
> causes integer overflow due to 32-bit arithmetic.
> 
> This manifests when the input arg length >= 8 GiB results in looping for
> i >= 2.
> 
> Fix by casting i to dma_addr_t before multiplication.
> 
> Fixes: 3aa31a8bb11e ("dma-buf: provide phys_vec to scatter-gather mapping routine")
> Signed-off-by: Alex Mastro <amastro@fb.com>
> ---
> More color about how I discovered this in [1] for the commit at [2]:
> 
> [1] https://lore.kernel.org/all/aSZHO6otK0Heh+Qj@devgpu015.cco6.facebook.com
> [2] https://lore.kernel.org/all/20251120-dmabuf-vfio-v9-6-d7f71607f371@nvidia.com
> ---
>  drivers/dma-buf/dma-buf-mapping.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

AlexW, can you pick this up?

Thanks,
Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
