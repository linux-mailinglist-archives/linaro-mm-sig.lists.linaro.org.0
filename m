Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0A162E299
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 18:09:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F3823F58B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 17:09:00 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id 002EC3EF32
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Nov 2022 17:08:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=googlemail.com header.s=20210112 header.b=mfyuY0gs;
	spf=pass (lists.linaro.org: domain of lukasz.wiecaszek@googlemail.com designates 209.85.218.47 as permitted sender) smtp.mailfrom=lukasz.wiecaszek@googlemail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id k2so6725702ejr.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Nov 2022 09:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UXTIiUhTsDF1ksUQHxOjXei7p0SmIC0BDVdiFoql/Uc=;
        b=mfyuY0gsE5mnqDj5qh5OiKmRss9nTC7A3qsjOYoPmm5QQril+rlThWhPU0wD6Ub4FC
         e8dxsES6M1eDGjtNdYNKm9uWUX68BWALYloABbu3r2vvFDB+bl/D9MHQ6dolimQYL7aN
         EDoPyKs23xH6dMrl3+/EWt/jUTXcuymGKUPBkiLzojbxcQ6vhLN5DETjo1B4QFlOQLpM
         A7oFWHptPVyHvILMhI23wk40X9QgjTKiYte9CvQuDej/WMCu4v9CcFPEYvL/YiE3Mxtw
         /HQeS59Jod2FDBu4Yq1PYEyxlMlpgmB9ck9ERJDj84wD/D15QAx9uXMl5r5UV9ZilzRE
         MwDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UXTIiUhTsDF1ksUQHxOjXei7p0SmIC0BDVdiFoql/Uc=;
        b=KjX2HdAoOY5+kBF0UN8FDz8zWJ4Fnfz5fObaxWRUl0vqmOtWJCwK59D/mGmKM9X0Jg
         ZIHLqJI/PjELCbJ2k/P+2O+/e/Wp0r+FbM8YGzeeyOGON6AypscV1Duxuv9fpGibdmBw
         PLjO8xfjACK/hHiOk4euSwMJ053qAPOSAZ14SQb2WPnvaxQu/Wekn8QOyrxSXiruEXhm
         Y/67SVTCoAhLkhFlBFKb2x/hqtvbQ5E0XwL595eoTusweCmoV5QrFon69GbNAeQBpwPP
         kWBbw3A56WldK/XSxZ2mm0xFINl1rWjQmYaPCMYeswsgzM5Sh4JzOw05l+2V1A1c6glC
         Q8SQ==
X-Gm-Message-State: ANoB5plJUOkKegL/5a3nif5AD/yveChdvda7ofTF+xwEQvhO2rprvZlx
	Pu4GEH+38q/EmyprToYKUg8=
X-Google-Smtp-Source: AA0mqf7wfxRfK7sRIBOzZ7oJkCHzXBfgd3DzeE6bB2BpmX+zB3cRO/dVMMsqWRKhiAIJzI2mS2+oNg==
X-Received: by 2002:a17:906:c084:b0:78d:e786:e322 with SMTP id f4-20020a170906c08400b0078de786e322mr2804280ejz.308.1668704921768;
        Thu, 17 Nov 2022 09:08:41 -0800 (PST)
Received: from thinkpad-p72 (user-5-173-65-115.play-internet.pl. [5.173.65.115])
        by smtp.gmail.com with ESMTPSA id m7-20020aa7c2c7000000b00467c3cbab6fsm769694edp.77.2022.11.17.09.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Nov 2022 09:08:41 -0800 (PST)
From: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>
X-Google-Original-From: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
Date: Thu, 17 Nov 2022 18:08:38 +0100
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Message-ID: <20221117170838.GA74987@thinkpad-p72>
References: <20221117045842.27161-1-lukasz.wiecaszek@gmail.com>
 <970e798d-ea26-5e1e-ace8-7915a866f7c7@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <970e798d-ea26-5e1e-ace8-7915a866f7c7@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: 002EC3EF32
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[mail-ej1-f47.google.com:helo,mail-ej1-f47.google.com:rdns,googlemail.com:dkim];
	TAGGED_RCPT(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[googlemail.com:dkim];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.47:from];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[googlemail.com,redhat.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[googlemail.com:+];
	FREEMAIL_FROM(0.00)[googlemail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: GMEGOUDTW3GSOP5DRQ27P6MHKYZHV7UY
X-Message-ID-Hash: GMEGOUDTW3GSOP5DRQ27P6MHKYZHV7UY
X-MailFrom: lukasz.wiecaszek@googlemail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>, Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] udmabuf: add vmap and vunmap methods to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GMEGOUDTW3GSOP5DRQ27P6MHKYZHV7UY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Nov 17, 2022 at 12:04:35PM +0300, Dmitry Osipenko wrote:
> Hi,
> 
> On 11/17/22 07:58, Lukasz Wiecaszek wrote:
> > The reason behind that patch is associated with videobuf2 subsystem
> > (or more genrally with v4l2 framework) and user created
> > dma buffers (udmabuf). In some circumstances
> > when dealing with V4L2_MEMORY_DMABUF buffers videobuf2 subsystem
> > wants to use dma_buf_vmap() method on the attached dma buffer.
> > As udmabuf does not have .vmap operation implemented,
> > such dma_buf_vmap() natually fails.
> > 
> > videobuf2_common: __vb2_queue_alloc: allocated 3 buffers, 1 plane(s) each
> > videobuf2_common: __prepare_dmabuf: buffer for plane 0 changed
> > videobuf2_common: __prepare_dmabuf: failed to map dmabuf for plane 0
> > videobuf2_common: __buf_prepare: buffer preparation failed: -14
> > 
> > The patch itself seems to be strighforward.
> > It adds implementation of .vmap and .vunmap methods
> > to 'struct dma_buf_ops udmabuf_ops'.
> > .vmap method itself uses vm_map_ram() to map pages linearly
> > into the kernel virtual address space.
> > .vunmap removes mapping created earlier by .vmap.
> > All locking and 'vmapping counting' is done in dma_buf.c
> > so it seems to be redundant/unnecessary in .vmap/.vunmap.
> > 
> > Signed-off-by: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
> 
> If new patch version doesn't contain significant changes and you got
> acks/reviews for the previous version, then you should add the given
> acked-by and reviewed-by tags to the commit message by yourself.
> 
> -- 
> Best regards,
> Dmitry
>

I would like to thank you all for your patience and on the same time say
sorry that I still cannot follow the process (although I have read
'submitting patches' chapter).

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
