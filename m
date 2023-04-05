Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C706D7F39
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 16:22:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62CF23EBED
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 14:22:05 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by lists.linaro.org (Postfix) with ESMTPS id A08D63EA3E
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Apr 2023 14:21:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=dpunbt78;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.54) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-4fd1f2a0f82so60297a12.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Apr 2023 07:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1680704513; x=1683296513;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0hEm3Bu1ajK6bUPoSCMbJz7g4+4dYw9soC8zApe4hMc=;
        b=dpunbt78Nu2bqL1/MCP1Yrvt88iEad8oMRiJF84xlTSiCngaKtk5FA3RBCcFzIOsOt
         kgwObyB+ED+hE6Et0bKNge+WJMib2ruloC80JurL5XZQySHnCnIA1r4RRQrkxWk4kT7m
         nMs2nmS1mHd/Ruhd8U1HtKNlbUAe6jhQh1GtU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680704513; x=1683296513;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0hEm3Bu1ajK6bUPoSCMbJz7g4+4dYw9soC8zApe4hMc=;
        b=oA0atbLjzM7LIhTl/QR3SstFbvR55aOfj+TIrs21XCewl42ZndkmRGeM6Wql7WfLQF
         yL3u04KHO693+lbeP5uH6z3x38+wV5d2DioGw25xme3JrPiboLpDLtZhjwIQptS5FhFh
         E/Vya9cihyg/CJDeBNNPP6E8+h7vJ7nBC/SEf0AzpUJUZ82OQQqqxCK8G/xlWF8urDEf
         kIXIA0B68LkLBqfN1gLgoBo6/lS320ftz8nJGrMwtIgRfRAltFrRi7nXOPyGiTcsUo2X
         1Ux1KxWvIWTkV+v2+gHXlxp7fjNAgCS8yQZOi4yu4lwsFc7PFQrJ/5R4BEKcXuhd9vf4
         T/dA==
X-Gm-Message-State: AAQBX9e8KQXqFQadjQ7HzpvU9Atal83zEst9IpJ2pKhqWv4+4ku62QDV
	YCqtG72lKIIbMy8S8Ga4ljJ4pQ==
X-Google-Smtp-Source: AKy350bxxApiu6QlBT7LFjNT5HOmCcGl6WDZP6khnW7b0dJcrSCSEyjhjNy22KbR8irHrR8fUaM/Aw==
X-Received: by 2002:a17:906:2093:b0:933:2e79:4632 with SMTP id 19-20020a170906209300b009332e794632mr2053178ejq.1.1680704513565;
        Wed, 05 Apr 2023 07:21:53 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id r6-20020a1709064d0600b0093034e71b94sm7467929eju.65.2023.04.05.07.21.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 07:21:53 -0700 (PDT)
Date: Wed, 5 Apr 2023 16:21:50 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <ZC2D/pQsNgaoSzzh@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Asahi Lina <lina@asahilina.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Wedson Almeida Filho <wedsonaf@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Luben Tuikov <luben.tuikov@amd.com>,
	Jarkko Sakkinen <jarkko@kernel.org>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Karol Herbst <kherbst@redhat.com>,
	Ella Stanforth <ella@iglunix.org>,
	Faith Ekstrand <faith.ekstrand@collabora.com>,
	Mary <mary@mary.zone>, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
	linux-sgx@vger.kernel.org, asahi@lists.linux.dev
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-10-917ff5bc80a8@asahilina.net>
 <ZC16Q8MhHEcutX1b@phenom.ffwll.local>
 <20502c4c-c987-3117-119a-2fd38ae5f607@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20502c4c-c987-3117-119a-2fd38ae5f607@amd.com>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A08D63EA3E
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.208.54:from,212.51.149.33:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.54:from];
	DMARC_NA(0.00)[ffwll.ch];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: DKPVOIJEBSLUGVMHMQYBYOX6PZKPRZX2
X-Message-ID-Hash: DKPVOIJEBSLUGVMHMQYBYOX6PZKPRZX2
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Asahi Lina <lina@asahilina.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DKPVOIJEBSLUGVMHMQYBYOX6PZKPRZX2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 05, 2023 at 04:14:11PM +0200, Christian K=F6nig wrote:
> Am 05.04.23 um 15:40 schrieb Daniel Vetter:
> > On Tue, Mar 07, 2023 at 11:25:35PM +0900, Asahi Lina wrote:
> > > Some hardware may require more complex resource utilization accounting
> > > than the simple job count supported by drm_sched internally. Add a
> > > can_run_job callback to allow drivers to implement more logic before
> > > deciding whether to run a GPU job.
> > >=20
> > > Signed-off-by: Asahi Lina <lina@asahilina.net>
> > Ok scheduler rules, or trying to summarize the entire discussion:
> >=20
> > dma_fence rules are very tricky. The two main chapters in the docs are
> >=20
> > https://dri.freedesktop.org/docs/drm/driver-api/dma-buf.html?highlight=
=3Ddma_buf#dma-fence-cross-driver-contract
> > https://dri.freedesktop.org/docs/drm/driver-api/dma-buf.html?highlight=
=3Ddma_buf#indefinite-dma-fences
> >=20
> > Unforutunately I don't think it's possible to check this at compile tim=
e,
> > thus far all we can do is validate at runtime. I've posted two patches =
for
> > this:
> >=20
> > https://lore.kernel.org/dri-devel/20201023122216.2373294-17-daniel.vett=
er@ffwll.ch/
> > https://lore.kernel.org/dri-devel/20201023122216.2373294-20-daniel.vett=
er@ffwll.ch/
> >=20
> > Unfortunately most drivers are buggy and get this completely wrong, so
> > realistically we'd need to make this a per-driver opt-out and annotate =
all
> > current drivers. Well except amdgpu is correct by now I think (they'd
> > still need to test that).
>=20
> There is still one potential memory allocation in the run_job callback in
> amdgpu which I wasn't able to fix yet.
>=20
> But that one is purely academic and could potentially be trivially replac=
ed
> with using GFP_ATOMIC if we ever have to.

I think the modeset in the tdr code was more scary, and I'm not sure you
really managed to get rid of absolutely everything in there yet.
-Daniel

>=20
> Christian.
>=20
> >   And Rob Clark is working on patches to fix up
> > msm.
> >=20
> > I think best here is if you work together with Rob to make sure these
> > annotations are mandatory for any rust drivers (I don't want new buggy
> > drivers at least). Would also be great to improve the kerneldoc for all
> > the driver hooks to explain these restrictions and link to the relevant
> > kerneldocs (there's also one for the dma_fence signalling annotations
> > which might be worth linking too).
> >=20
> > I don't see any way to make this explicit in rust types, it's really on=
ly
> > something runtime tests (using lockdep) can catch. Somewhat disappointi=
ng.
> >=20
> > For the other things discussed here:
> >=20
> > - Option<Dma_Fence> as the return value for ->prepare_job makes sense to
> >    me.
> >=20
> > - I don't see any way a driver can use ->can_run_job without breaking t=
he
> >    above rules, that really doesn't sound like a good idea to me.
> >=20
> > Cheers, Daniel
> >=20
> > > ---
> > >   drivers/gpu/drm/scheduler/sched_main.c | 10 ++++++++++
> > >   include/drm/gpu_scheduler.h            |  8 ++++++++
> > >   2 files changed, 18 insertions(+)
> > >=20
> > > diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm=
/scheduler/sched_main.c
> > > index 4e6ad6e122bc..5c0add2c7546 100644
> > > --- a/drivers/gpu/drm/scheduler/sched_main.c
> > > +++ b/drivers/gpu/drm/scheduler/sched_main.c
> > > @@ -1001,6 +1001,16 @@ static int drm_sched_main(void *param)
> > >   		if (!entity)
> > >   			continue;
> > > +		if (sched->ops->can_run_job) {
> > > +			sched_job =3D to_drm_sched_job(spsc_queue_peek(&entity->job_queue=
));
> > > +			if (!sched_job) {
> > > +				complete_all(&entity->entity_idle);
> > > +				continue;
> > > +			}
> > > +			if (!sched->ops->can_run_job(sched_job))
> > > +				continue;
> > > +		}
> > > +
> > >   		sched_job =3D drm_sched_entity_pop_job(entity);
> > >   		if (!sched_job) {
> > > diff --git a/include/drm/gpu_scheduler.h b/include/drm/gpu_scheduler.h
> > > index 9db9e5e504ee..bd89ea9507b9 100644
> > > --- a/include/drm/gpu_scheduler.h
> > > +++ b/include/drm/gpu_scheduler.h
> > > @@ -396,6 +396,14 @@ struct drm_sched_backend_ops {
> > >   	struct dma_fence *(*prepare_job)(struct drm_sched_job *sched_job,
> > >   					 struct drm_sched_entity *s_entity);
> > > +	/**
> > > +	 * @can_run_job: Called before job execution to check whether the
> > > +	 * hardware is free enough to run the job.  This can be used to
> > > +	 * implement more complex hardware resource policies than the
> > > +	 * hw_submission limit.
> > > +	 */
> > > +	bool (*can_run_job)(struct drm_sched_job *sched_job);
> > > +
> > >   	/**
> > >            * @run_job: Called to execute the job once all of the depe=
ndencies
> > >            * have been resolved.  This may be called multiple times, =
if
> > >=20
> > > --=20
> > > 2.35.1
> > >=20
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
