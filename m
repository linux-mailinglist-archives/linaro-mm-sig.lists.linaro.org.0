Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 875E062817A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Nov 2022 14:38:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 955063F0CE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Nov 2022 13:38:07 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	by lists.linaro.org (Postfix) with ESMTPS id 20AB03F5C6
	for <linaro-mm-sig@lists.linaro.org>; Sat, 12 Nov 2022 06:11:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=googlemail.com header.s=20210112 header.b=i1uk5Zvq;
	spf=pass (lists.linaro.org: domain of lukasz.wiecaszek@googlemail.com designates 209.85.208.177 as permitted sender) smtp.mailfrom=lukasz.wiecaszek@googlemail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id d20so6684535ljc.12
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Nov 2022 22:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iiJFdVsZWeFbUIjvbGEQtUMcST9y103D3tolVec5T+c=;
        b=i1uk5ZvqoGFGK8nZB98WC92fomQizagpq5RkWwzGaZxrUMx8Mar8RsEQ6zlflsys39
         VEXDGMZYPBy2Pj+uY1RqAdyGuNBxjebmUN0xx+4iEOpAxKZueS7HWY2Ed+ZPPUt61uNu
         M63Y0Wbspp8O946RiLU+4GoBetu7HM48lDHoOW+c7ehId7zndefjnqA1nws50PmN0n3X
         NcykmvbrlZJzTYp9gDEdcc0l8ia40plvLqQlgy+Nke9jLaBpxpg0n4kI82SG+JefZQQg
         8zAPXb9Q64PmIFGsfDf2UlwTnQI5DjRqiqUtr5EtSTjxTQkVnm2Vt7I5TIZ9TufwtfIb
         nOjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iiJFdVsZWeFbUIjvbGEQtUMcST9y103D3tolVec5T+c=;
        b=GII2s3p5MoCHGXLitt1VJGNaZWctV41gkiJ4SwAKjADz/F3UMw5Z4JU8C4cKnGDYRX
         irCd5u1ipOagpg65JT+JHsk4VOKNqigwu87d45oWgANzhKvwklbHiQRiHrB27dhjII17
         qimbkzIXUbUQR+bD9MhgMdZ5HEkCBp3C7FCDnRF1ABziq0v9e+VkKOxqPxPbyh2AJtgs
         KCcE7JaMVi+fEuaE54IrfRnWgbbc57Kx0OLpejLZ96JxCwTLukOsfoFpOt3nhFavSdTf
         T8hZS/hzRc0W/dC9kdZpSbI2cT1h009H+b7LfU8/GNqFMva5GaCuwGBjDfPRgR3vYQO5
         8Lbg==
X-Gm-Message-State: ANoB5pkSxizc3o1cSXGUw8pSCRZ/T+A1uhs/pHq6sHeq4Ml7N0OIidEm
	HPwdh7jOgS6PSoSXNCF9i1k=
X-Google-Smtp-Source: AA0mqf5DMQ1ZxQn699hZeiFNPKSFjAUDJmBcQbglma+77N/i2qEdjx22sDKIZ5Bfce+GOAJMZNGrWA==
X-Received: by 2002:a2e:6d11:0:b0:26f:c081:9aed with SMTP id i17-20020a2e6d11000000b0026fc0819aedmr1524113ljc.222.1668233470786;
        Fri, 11 Nov 2022 22:11:10 -0800 (PST)
Received: from thinkpad-p72 ([78.133.163.249])
        by smtp.gmail.com with ESMTPSA id q9-20020a2e84c9000000b0026dced9840dsm736624ljh.61.2022.11.11.22.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 22:11:10 -0800 (PST)
From: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>
X-Google-Original-From: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
Date: Sat, 12 Nov 2022 07:11:08 +0100
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Message-ID: <20221112061108.GA679753@thinkpad-p72>
References: <20221111114528.608801-1-lukasz.wiecaszek@gmail.com>
 <2ee10e0e-a347-71a5-051a-02b9bac0bbb6@amd.com>
 <512e97ec-5d5e-4d6a-e547-13ca4036f3d1@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <512e97ec-5d5e-4d6a-e547-13ca4036f3d1@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 20AB03F5C6
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.208.177:from];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.992];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,googlemail.com,redhat.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.177:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-lj1-f177.google.com:helo,mail-lj1-f177.google.com:rdns];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[googlemail.com:+];
	FREEMAIL_FROM(0.00)[googlemail.com];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-MailFrom: lukasz.wiecaszek@googlemail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BZEC6QS7XZRINBMJ5OGPWOK5BTZIWLGE
X-Message-ID-Hash: BZEC6QS7XZRINBMJ5OGPWOK5BTZIWLGE
X-Mailman-Approved-At: Mon, 14 Nov 2022 13:37:27 +0000
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>, kraxel@redhat.com, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: add vmap method to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BZEC6QS7XZRINBMJ5OGPWOK5BTZIWLGE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 11, 2022 at 03:31:15PM +0300, Dmitry Osipenko wrote:
> On 11/11/22 15:05, Christian K=F6nig wrote:
> > Adding Dmitry as well.
> >=20
> > Am 11.11.22 um 12:45 schrieb Lukasz Wiecaszek:
> >> The reason behind that patch is associated with videobuf2 subsystem
> >> (or more genrally with v4l2 framework) and user created
> >> dma buffers (udmabuf). In some circumstances
> >> when dealing with V4L2_MEMORY_DMABUF buffers videobuf2 subsystem
> >> wants to use dma_buf_vmap() method on the attached dma buffer.
> >> As udmabuf does not have .vmap operation implemented,
> >> such dma_buf_vmap() natually fails.
> >>
> >> videobuf2_common: [cap-000000003473b2f1] __vb2_queue_alloc: allocated
> >> 3 buffers, 1 plane(s) each
> >> videobuf2_common: [cap-000000003473b2f1] __prepare_dmabuf: buffer for
> >> plane 0 changed
> >> videobuf2_common: [cap-000000003473b2f1] __prepare_dmabuf: failed to
> >> map dmabuf for plane 0
> >> videobuf2_common: [cap-000000003473b2f1] __buf_prepare: buffer
> >> preparation failed: -14
> >>
> >> The patch itself seems to be strighforward.
> >> It adds implementation of .vmap method to 'struct dma_buf_ops
> >> udmabuf_ops'.
> >> .vmap method itself uses vm_map_ram() to map pages linearly
> >> into the kernel virtual address space (only if such mapping
> >> hasn't been created yet).
> >=20
> > Of hand that sounds sane to me.
> >=20
> > You should probably mention somewhere in a code comment that the cached
> > vaddr is protected by the reservation lock being taken. That's not
> > necessary obvious to everybody.
> >=20
> > Apart from that looks good to me.
>=20
> Adding a comment won't hurt.
>=20
> We have the dma_resv_assert_held() in dma_buf_vmap() that will help
> spotting a missing lock at runtime by developers. While the
> dmbuf_ops->vmap() shouldn't be ever used directly by importers.
>=20
> --=20
> Best regards,
> Dmitry
>

Give me some time guys. I need to prepare patch agains 6.1. And this is
my first time, so now it hurts.=20

Lukasz

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
