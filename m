Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACD89311F8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Jul 2024 12:08:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7200641255
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Jul 2024 10:08:56 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 38F1E3F0B5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Jul 2024 10:08:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=SmJsL48v;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.128.51) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4266ea4e4bdso3495935e9.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Jul 2024 03:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1721038132; x=1721642932; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CR2Ia0FiVFedpG588AkdnSWlCXZ9egJLBsCqhnpjuT8=;
        b=SmJsL48v55NpeUnaPi8sIqyayHe/SWd6VcMwdfjPUO/C4TqSzzKCKFUX9Pp9RUaMe3
         mvxff58t1rFXaKYHvAUF7tPFjPjJ+sba6bT7f+aE/C8hYl7e6Ec2DqFGr7t6xFt9ZnZS
         t0IvltuBtVIsRZXpZSPbqPqEwbt1ooWd1i6Dg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721038132; x=1721642932;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CR2Ia0FiVFedpG588AkdnSWlCXZ9egJLBsCqhnpjuT8=;
        b=eVj2sAxJ75u5po78OwiNdu2CLeYgiHZQqU8clvCljx6q/5omYYXwNWWgCJbkEKU2BT
         cCBgK3RQjRz6fUPCWfF5bAo9yEXTaRUejhFYrni3rs4XJ9PBsRroyiR+Y/1o+ET5Ej/y
         LzJOQPVJhsxAkeYNU31DjnG1quT8vEWuS3r3F0YCSZYEY3gnYWw7s3CbEBmAT06H8zBC
         rAH9r0xT09NFDWlmqoTHbM90toxJhRx/JZSNZ6Zz/5Z8uZk1W79BDxfZ95k4f9G4AnpT
         orkvFo0TdTPLfpvI/pHMZO8fdPzNB+f5AfsFDjxFNdHYNG16gQZjzzV86YArW1Woh6sy
         jvRA==
X-Forwarded-Encrypted: i=1; AJvYcCXp34f4ISK1q2MrB0VQSPjObb4JbB/W+SNlru1cYmiL8e5e+FeLmNMQIkrZWF6myvCjv1F30lembHABuxNSxJuxHT7Frn+JX/4Lq1rwTvU=
X-Gm-Message-State: AOJu0YzEO05VMGUXfxS5Li6W3e8PvbqN20rvka+MJPLJkO5sfpk3M0FN
	zG/h99DhrXXI8mDoUDyU1A8D2RP3h9jfmbWmXu6ajiSg/AmpBKa4VRAhUyIyabQ=
X-Google-Smtp-Source: AGHT+IHyT41V56P2D7gRVnHbsl6ebnID4kMa+VsHDxqWmcAkAFdIoHpQ9xgw+h4TlxD7k+VH6h7+vQ==
X-Received: by 2002:a05:600c:3b8c:b0:426:4920:2846 with SMTP id 5b1f17b1804b1-4279834f1e5mr64390645e9.3.1721038132199;
        Mon, 15 Jul 2024 03:08:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f23981fsm115958335e9.4.2024.07.15.03.08.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 03:08:51 -0700 (PDT)
Date: Mon, 15 Jul 2024 12:08:49 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <ZpT1MeLxz2yLtDxu@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	DRI Development <dri-devel@lists.freedesktop.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
	Daniel Vetter <daniel.vetter@intel.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org
References: <20240710093120.732208-1-daniel.vetter@ffwll.ch>
 <03f7e2ad-fd5c-4da7-a14c-34c2c158c513@amd.com>
 <CAKMK7uFvCr2qcHun06LC-ON3GBqj8=mCpPGHuAOh9BEyr60fiQ@mail.gmail.com>
 <cf3ff1b9-2934-47bd-93c7-5ea55d10c82f@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cf3ff1b9-2934-47bd-93c7-5ea55d10c82f@amd.com>
X-Operating-System: Linux phenom 6.9.7-amd64 
X-Rspamd-Queue-Id: 38F1E3F0B5
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.51:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
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
Message-ID-Hash: HLLZG4TYYQUV7QWWUEKFH5W3SXHRZUTY
X-Message-ID-Hash: HLLZG4TYYQUV7QWWUEKFH5W3SXHRZUTY
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: DRI Development <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Daniel Vetter <daniel.vetter@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] drm: Add might_fault to drm_modeset_lock priming
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HLLZG4TYYQUV7QWWUEKFH5W3SXHRZUTY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 10, 2024 at 02:40:04PM +0200, Christian K=F6nig wrote:
> Am 10.07.24 um 13:58 schrieb Daniel Vetter:
> > On Wed, 10 Jul 2024 at 13:39, Christian K=F6nig <christian.koenig@amd.c=
om> wrote:
> > > Am 10.07.24 um 11:31 schrieb Daniel Vetter:
> > > > We already teach lockdep that dma_resv nests within drm_modeset_loc=
k,
> > > > but there's a lot more: All drm kms ioctl rely on being able to
> > > > put/get_user while holding modeset locks, so we really need a
> > > > might_fault in there too to complete the picture. Add it.
> > > Mhm, lockdep should be able to deduce that when there might be faults
> > > under the dma_resv lock there might also be faults under the
> > > drm_modeset_lock.
> > You're not allowed to take a fault under dma_resv, because drivers
> > might need to take that lock to handle faults. So unfortunately in our
> > combined lockdep priming, there really seems to be no chain yet that
> > teaches about faults possibly happening while holding
> > drm_modeset_lock.
>=20
> Ah, of course! You are right, it was just the other way around.

Applied to drm-misc-next, thanks for your review.
-Sima

>=20
> Thanks,
> Christian.
>=20
> > -Sima
> >=20
> > > > Motivated by a syzbot report that blew up on bcachefs doing an
> > > > unconditional console_lock way deep in the locking hierarchy, and
> > > > lockdep only noticing the depency loop in a drm ioctl instead of mu=
ch
> > > > earlier. This annotation will make sure such issues have a much har=
der
> > > > time escaping.
> > > >=20
> > > > References: https://lore.kernel.org/dri-devel/00000000000073db8b061=
cd43496@google.com/
> > > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > Cc: Maxime Ripard <mripard@kernel.org>
> > > > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > > > Cc: Sumit Semwal <sumit.semwal@linaro.org>
> > > > Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> > > > Cc: linux-media@vger.kernel.org
> > > > Cc: linaro-mm-sig@lists.linaro.org
> > > On the other hand pointing it out explicitly doesn't hurts us at all,=
 so
> > > Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>.
> > >=20
> > > Regards,
> > > Christian.
> > >=20
> > > > ---
> > > >    drivers/gpu/drm/drm_mode_config.c | 2 ++
> > > >    1 file changed, 2 insertions(+)
> > > >=20
> > > > diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/dr=
m_mode_config.c
> > > > index 568972258222..37d2e0a4ef4b 100644
> > > > --- a/drivers/gpu/drm/drm_mode_config.c
> > > > +++ b/drivers/gpu/drm/drm_mode_config.c
> > > > @@ -456,6 +456,8 @@ int drmm_mode_config_init(struct drm_device *de=
v)
> > > >                if (ret =3D=3D -EDEADLK)
> > > >                        ret =3D drm_modeset_backoff(&modeset_ctx);
> > > >=20
> > > > +             might_fault();
> > > > +
> > > >                ww_acquire_init(&resv_ctx, &reservation_ww_class);
> > > >                ret =3D dma_resv_lock(&resv, &resv_ctx);
> > > >                if (ret =3D=3D -EDEADLK)
> >=20
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
