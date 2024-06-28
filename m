Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6F191C568
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 20:06:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA866441AD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 18:06:35 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by lists.linaro.org (Postfix) with ESMTPS id 0B78F43C24
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 18:06:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b="dc4vD+/z";
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.167.53) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52e7f249e8cso18790e87.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 11:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1719597992; x=1720202792; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D6RF7ZhfHPezXZ+JwgRkmSw3bzrniFyo5WgctlVMcKM=;
        b=dc4vD+/zRAHtep5kuFcU7QK2QDRscdm95KsV3RiTNJjxpeIiwCjKVblb+Kr+bv6WJ7
         Izx2VP7B9INHyxQHZXM+zqaZr9j4R8aiNtcBYKXuA5Nk2OmyK7xbbK59qZBYYgkr25eI
         7axn2PaY3IxikHfK5ovbpKOeCYmavaVj7mOwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719597992; x=1720202792;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D6RF7ZhfHPezXZ+JwgRkmSw3bzrniFyo5WgctlVMcKM=;
        b=OxQVBGN6g59G4BIi+ZgnYlMvAfh0l4dGpzptpcjGi4BRYElefosXszoUrLbW8qswtO
         QFmhBijqOER/bDufEmVHQ+L6XsMO6A3yjQFfetz6tOqChWi0lkAziOzP/l9TL9OCHQYP
         qAfeFrBFiXw0ouZTW02i5ySkDiajmtOTrl5JhvIunahGeelsT1a0Kc81gQSEKHnG3tCT
         PYtuHyCu9YQAeCzhB2KJfzHS9lVeuojrjavRnwRLg3XDCM5vYWzekDtcrSfHWU+LKgSd
         iQnIC+c515XNxClBuq/carT3X9jCtdgeslFgmnPXDnTFEHIqE+3Z8Y9ZfBCy1LrB8D3i
         IuAg==
X-Forwarded-Encrypted: i=1; AJvYcCVCqYV5PXgn2lVm1O9rkv6nGTEvX0yffs1dOkxdkpcJXF1t3BNjj9A5Iz9a7SZpMIirODnz8dIsQFFhqGEuEGT2tRfmRHq0VxBfCM4tWQY=
X-Gm-Message-State: AOJu0Ywy8Gmtj7n+Hp8vx6pV+3IRgd4sRZqtSOnGix7NRI1g22EziKKe
	gqj482Wg/PKC1l+txOaSx6Trm0kvHL6zNF71wPx2VvgjLzIHWbEmOdmLyrYT0GY=
X-Google-Smtp-Source: AGHT+IFPw3UkwaO7XpBL0spmNeH+I8UeFCE0PwAIAhPs3nFppOSfxvTU+I6UaRVoaBiX0qZ+ssaUIQ==
X-Received: by 2002:a05:6512:1386:b0:52e:7498:118a with SMTP id 2adb3069b0e04-52e7498135emr3870794e87.4.1719597991738;
        Fri, 28 Jun 2024 11:06:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0e0b7csm3010776f8f.49.2024.06.28.11.06.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 11:06:31 -0700 (PDT)
Date: Fri, 28 Jun 2024 20:06:29 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <Zn77penjAruTgLMM@phenom.ffwll.local>
References: <40611e5ff8c32b99e7863293a0baac078f323d8f.camel@linux.intel.com>
 <Zn0c8l-yQih3j0NE@phenom.ffwll.local>
 <6bc17415f36c2a9c689010e1cf397fc75a8df55e.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6bc17415f36c2a9c689010e1cf397fc75a8df55e.camel@linux.intel.com>
X-Operating-System: Linux phenom 6.8.9-amd64 
X-Rspamd-Queue-Id: 0B78F43C24
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.53:from];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	URIBL_BLOCKED(0.00)[mail-lf1-f53.google.com:helo,mail-lf1-f53.google.com:rdns];
	DMARC_NA(0.00)[ffwll.ch];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HJVWRZLGT2CPACPUGGUX6WJ5PRKGKHMJ
X-Message-ID-Hash: HJVWRZLGT2CPACPUGGUX6WJ5PRKGKHMJ
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: dma_buf_detach lockdep splat
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HJVWRZLGT2CPACPUGGUX6WJ5PRKGKHMJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 27, 2024 at 02:18:44PM +0200, Thomas Hellstr=F6m wrote:
> On Thu, 2024-06-27 at 10:04 +0200, Daniel Vetter wrote:
> > On Wed, Jun 26, 2024 at 05:58:02PM +0200, Thomas Hellstr=F6m wrote:
> > > Hi!
> > >=20
> > > I'm seeing the below lockdep splat 1) with the xe driver in an
> > > imported
> > > dma-buf object destruction path.
> > >=20
> > > It's not because we hold the dma_resv lock at that point, but
> > > rather
> > > because we hold *another* dma_resv lock at that point, and the
> > > dma_resv
> > > detach happens when the object is idle, in this case it was idle at
> > > the
> > > final put(), and dma_buf_detach() is called in the putting process.
> > >=20
> > > Holding another dma-buf lock might happen as part of
> > > drm_exec_unlock_all, or simply if the wider vm dma_resv was held at
> > > object put time, so it's not an uncommon pattern, even if the
> > > drm_exec
> > > instance can be fixed by putting all bos after unlocking them all.
> > >=20
> > > Two solutions coming to mind here:
> > >=20
> > > 1) Provide a dma_buf_detach_locked()
> >=20
> > This smells way too much like the endless headaches we had with
> > drm_gem_object_put_locked and friends against
> > drm_device.struct_mutex. Or
> > I'm not understanding what you're doing, because I'm pretty sure you
> > have
> > to take the dma_resv lock on final put() of imported objects. Because
> > that
> > final put() is of the import wrapper, the exporter (and other
> > importers)
> > can still get at that object and so dma_resv_lock is very much
> > needed.
>=20
> Yeah, the TTM final put looks like
>=20
> if (!dma_resv_trylock() || !idle)
> 	queue_work(final_distruction);
>=20
> dma_resv_unlock();
> dma_buf_detach(); <--- lockdep splat
>=20
> Here's where a dma_buf_detach_locked() would've made sense before the
> dma_resv_unlock().
>=20
> But if you think this will cause grief, I'm completely fine with
> fixing this in TTM by always taking the deferring path.

Oh I misunderstood what you've meant, I thought you want to do a huge
exercise in passing the "do we know we're locked" flag all the way through
entire callchains to exporters.

If it's just so that the fastpath of bypassing the worker can function for
imported buffers, then I think that's fine. As long as we just punt to the
worker if we can't get the lock.
-Sima
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
