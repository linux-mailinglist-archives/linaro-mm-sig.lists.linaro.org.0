Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5067862F19F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Nov 2022 10:43:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A2AC3F5EA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Nov 2022 09:43:04 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by lists.linaro.org (Postfix) with ESMTPS id 7FCA63EECF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Nov 2022 09:42:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=googlemail.com header.s=20210112 header.b=ozV32jxu;
	spf=pass (lists.linaro.org: domain of lukasz.wiecaszek@googlemail.com designates 209.85.208.51 as permitted sender) smtp.mailfrom=lukasz.wiecaszek@googlemail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id f7so6367116edc.6
        for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Nov 2022 01:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RWwTJqBdRkGxMpUsXkj7kS4LoBFLsxAyq8V52F2ktYA=;
        b=ozV32jxunKudpT0TF9+m0W4jAgSzBwZzSOICFLkkKE+F+y7iFgFOXwHYqx97pFp6yD
         kl1JvtDkvY4HV9Ty5PsuN4BZYIXP/KQ8FdrTc2eD+HyjOCRISkvaJ1Q7hi/XowrxcumP
         RxmovPRETWrFf+XTgN+kismameBs4PGRyu91z7GDURMC6N5oi8OTy9+Sx9v6IVNvzAs2
         ACoBX5jqLfvi3SN7MADZ8ooN1yUgwahn9Lnv6aZYC+6cNkJPtw9am+CfrTiMZ6Whf113
         tFLK82SlhDxr3m5FWYwI8D4G8Pi/ee+lFXAcC7401V/gkhjlcswixL4kTMYySHVjrXlp
         iLvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RWwTJqBdRkGxMpUsXkj7kS4LoBFLsxAyq8V52F2ktYA=;
        b=MTiz9R5SLDAkXnp/ej1o3RDIwSAIcBT+AFvuvTv60bUHS2mN92RDczLbaLrAgkXXe1
         njuiQIHbPDBQZBARffoU7Vy6pX1MN2h1h/qJuoo77yjb6ujrLXrnyh2AogA4cQgD42IB
         Q3+RUesRumo8B7tC6jwuXelDKnMhGNdPjt8oVxiB468WiXOP03QDXdPcU2vTf7I4t4P/
         lNvGisDGgLr3YrOAwt0ZmIgrLMfLjpGFmHCXydmQyD1zoqIUjapsm3DSpai5qt4BpA/0
         OAMWKB6nwxOq48AK9hYbA9CmzvuLJmd6oVlMhNPL//rZfEzb2uyVOreQwt2BvNIQOiuQ
         FW7g==
X-Gm-Message-State: ANoB5plLhusOv/P9BTVGjyn2sduFQYQAWnI3OITqCPeoMAbtCZgCSCTs
	tw+n5/2anLv1yKgUQZ4O6/g=
X-Google-Smtp-Source: AA0mqf7lt9bhkwouPKDyaPPGRqg+cJhOC2I/phTI9ASYuSDfCXzmI05hDjjgWqpX7tCK872W/b86Tg==
X-Received: by 2002:a05:6402:2217:b0:468:fd95:eb4 with SMTP id cq23-20020a056402221700b00468fd950eb4mr3319804edb.230.1668764566276;
        Fri, 18 Nov 2022 01:42:46 -0800 (PST)
Received: from thinkpad-p72 (user-5-173-65-115.play-internet.pl. [5.173.65.115])
        by smtp.gmail.com with ESMTPSA id o6-20020a056402444600b0046383354bf9sm1569307edb.40.2022.11.18.01.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 01:42:45 -0800 (PST)
From: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>
X-Google-Original-From: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
Date: Fri, 18 Nov 2022 10:42:42 +0100
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20221118094242.GA89173@thinkpad-p72>
References: <20221117045842.27161-1-lukasz.wiecaszek@gmail.com>
 <970e798d-ea26-5e1e-ace8-7915a866f7c7@collabora.com>
 <20221117170838.GA74987@thinkpad-p72>
 <cd382f43-1995-12a6-840b-32450e62f9f4@collabora.com>
 <6ecae1e3-16cb-f5fb-05ce-a98fcf145069@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ecae1e3-16cb-f5fb-05ce-a98fcf145069@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: 7FCA63EECF
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[googlemail.com:dkim];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.51:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[googlemail.com:+];
	FREEMAIL_FROM(0.00)[googlemail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,googlemail.com,redhat.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: ADDRMDXKVA4CY2JKWKXKFM74MMV2U4LJ
X-Message-ID-Hash: ADDRMDXKVA4CY2JKWKXKFM74MMV2U4LJ
X-MailFrom: lukasz.wiecaszek@googlemail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Dmitry Osipenko <dmitry.osipenko@collabora.com>, Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>, Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] udmabuf: add vmap and vunmap methods to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ADDRMDXKVA4CY2JKWKXKFM74MMV2U4LJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 17, 2022 at 07:01:05PM +0100, Christian K=F6nig wrote:
> Am 17.11.22 um 18:32 schrieb Dmitry Osipenko:
> > On 11/17/22 20:08, Lukasz Wiecaszek wrote:
> > > On Thu, Nov 17, 2022 at 12:04:35PM +0300, Dmitry Osipenko wrote:
> > > > Hi,
> > > >=20
> > > > On 11/17/22 07:58, Lukasz Wiecaszek wrote:
> > > > > The reason behind that patch is associated with videobuf2 subsyst=
em
> > > > > (or more genrally with v4l2 framework) and user created
> > > > > dma buffers (udmabuf). In some circumstances
> > > > > when dealing with V4L2_MEMORY_DMABUF buffers videobuf2 subsystem
> > > > > wants to use dma_buf_vmap() method on the attached dma buffer.
> > > > > As udmabuf does not have .vmap operation implemented,
> > > > > such dma_buf_vmap() natually fails.
> > > > >=20
> > > > > videobuf2_common: __vb2_queue_alloc: allocated 3 buffers, 1 plane=
(s) each
> > > > > videobuf2_common: __prepare_dmabuf: buffer for plane 0 changed
> > > > > videobuf2_common: __prepare_dmabuf: failed to map dmabuf for plan=
e 0
> > > > > videobuf2_common: __buf_prepare: buffer preparation failed: -14
> > > > >=20
> > > > > The patch itself seems to be strighforward.
> > > > > It adds implementation of .vmap and .vunmap methods
> > > > > to 'struct dma_buf_ops udmabuf_ops'.
> > > > > .vmap method itself uses vm_map_ram() to map pages linearly
> > > > > into the kernel virtual address space.
> > > > > .vunmap removes mapping created earlier by .vmap.
> > > > > All locking and 'vmapping counting' is done in dma_buf.c
> > > > > so it seems to be redundant/unnecessary in .vmap/.vunmap.
> > > > >=20
> > > > > Signed-off-by: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
> > > > If new patch version doesn't contain significant changes and you got
> > > > acks/reviews for the previous version, then you should add the given
> > > > acked-by and reviewed-by tags to the commit message by yourself.
> > > >=20
> > > > --=20
> > > > Best regards,
> > > > Dmitry
> > > >=20
> > > I would like to thank you all for your patience and on the same time =
say
> > > sorry that I still cannot follow the process (although I have read
> > > 'submitting patches' chapter).
> > If you'll continue to contribute actively, you'll find things that
> > aren't documented at all. Don't worry about it, usually somebody will
> > tell you about what's missing. Just apply the new knowledge next time ;)
>=20
> Yeah, it's more learning by doing. Especially I suspect you don't have
> commit rights to drm-misc-next (or do you want to upstream it through some
> other branch?), so as soon as nobody has any more objections ping Dmitry =
or
> me to push this.
>=20
> Cheers,
> Christian
>=20
> PS: The Signed-of-by, Reviewed-by, Acked-by etc... lines are usually added
> in chronological order, e.g. your Signed-of-by line should always come
> first.
>=20
>
Thanks one more time. Funny thing, but at the very beginning I had
Signed-of-by as the first line. Then I looked at 'git log' and spoted
different order, so I change mine as well. Ahhh. But this chronological
order of course make sense. So if you feel ok with this 'out of order'
issue, please push/merge this commit. If not, please let me know. I
already submitted version 5 of that work. So if change is required, I
will prepare version 6.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
