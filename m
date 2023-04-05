Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B78956D86E3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 21:29:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 53B893F5BE
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 19:29:17 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id 563083EE30
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Apr 2023 19:29:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=FBmtIvVf;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.48) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-947a47eb908so59786066b.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Apr 2023 12:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1680722945;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HjS4xiLUH8Vl6mwX+ydicDNhQfS/HlIJ5pcb18flIFA=;
        b=FBmtIvVfM4pGQI0Ecn5kpWqT9ewv/aw4Fo78eRrx1HwuZBp4iXUV5H057Luk2hvw2u
         ulz9ur/hM3WMIFn4fbzHBA2uvVARF0Kv0zsR5L7enELuauqiMc0abH4qMusRV/lI+9z6
         rMCS6thBW9YJ4KbSlkrUTkyEBTGwzwnZC74V4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680722945;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HjS4xiLUH8Vl6mwX+ydicDNhQfS/HlIJ5pcb18flIFA=;
        b=vyF84uUc/UOCtEWZ4KyfeoLwRj+90/z9Dl2pXdtjARR+khmXjXA/Q4lSoiwqDnemr+
         ZlyjI21UqeXGXUxa8er41r9YDEeIB40nWEmwdi6PhHyj0xqelXqqM5pkCF2/Oen2/4JQ
         /0OLSlGAfREQcnoVMvqRX26hXFpMJf8O75iI7ZhjYNShUoQTb1myeKb2CdncQmq4lZou
         4X6sK3r4KcmhT0VWdqh4C0TPdrlpmQUDHQVudY0/JfiEkX+vMmdWZbKQmJwpDPpo2ZKV
         W5JgDmDIcusxd8e+1rtUsdVHcYOEw9ps4k5S42HK8U5wPbtYvp/EOKKCjQXcufLiCsLO
         8BsA==
X-Gm-Message-State: AAQBX9cjJt5GcARvhxkZ8OOV4hoh8mVAq0Vy1Ht+drSTcvZDvI3/u7E3
	Aul6Di8NU1fXrF7VK8T5FDzCWg==
X-Google-Smtp-Source: AKy350YXaXE3UsMcWjKsIKz3/lGkR1neWBZc+WNbMetS2a0zQrsKbODyiNsB5M3OyGWh53lfa89J9Q==
X-Received: by 2002:a05:6402:524e:b0:500:3fd0:25a8 with SMTP id t14-20020a056402524e00b005003fd025a8mr3953373edd.0.1680722945234;
        Wed, 05 Apr 2023 12:29:05 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id cq5-20020a056402220500b005023ddb37eesm7596632edb.8.2023.04.05.12.29.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 12:29:04 -0700 (PDT)
Date: Wed, 5 Apr 2023 21:29:02 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Asahi Lina <lina@asahilina.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Wedson Almeida Filho <wedsonaf@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
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
Message-ID: <ZC3L/uinmOwI+FbI@phenom.ffwll.local>
Mail-Followup-To: Asahi Lina <lina@asahilina.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Wedson Almeida Filho <wedsonaf@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
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
 <20230307-rust-drm-v1-12-917ff5bc80a8@asahilina.net>
 <ZC2XBfJGAdNMQjpZ@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZC2XBfJGAdNMQjpZ@phenom.ffwll.local>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 563083EE30
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.30 / 15.00];
	DWL_DNSWL_HI(-3.50)[ffwll.ch:dkim];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_NA(0.00)[ffwll.ch];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-ej1-f48.google.com:helo,mail-ej1-f48.google.com:rdns,ffwll.ch:dkim,ffwll.ch:url];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.48:from];
	RCPT_COUNT_TWELVE(0.00)[28];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[mail-ej1-f48.google.com:helo,mail-ej1-f48.google.com:rdns,ffwll.ch:dkim,ffwll.ch:url];
	FREEMAIL_TO(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: WTU2SXIJIKVWHLC263NVMVFP5F6KWW5F
X-Message-ID-Hash: WTU2SXIJIKVWHLC263NVMVFP5F6KWW5F
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 12/18] rust: drm: sched: Add GPU scheduler abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WTU2SXIJIKVWHLC263NVMVFP5F6KWW5F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Apr 05, 2023 at 05:43:01PM +0200, Daniel Vetter wrote:
> On Tue, Mar 07, 2023 at 11:25:37PM +0900, Asahi Lina wrote:
> > +/// An armed DRM scheduler job (not yet submitted)
> > +pub struct ArmedJob<'a, T: JobImpl>(Box<Job<T>>, PhantomData<&'a T>);
> > +
> > +impl<'a, T: JobImpl> ArmedJob<'a, T> {
> > +    /// Returns the job fences
> > +    pub fn fences(&self) -> JobFences<'_> {
> > +        JobFences(unsafe { &mut *self.0.job.s_fence })
> > +    }
> > +
> > +    /// Push the job for execution into the scheduler
> > +    pub fn push(self) {
> > +        // After this point, the job is submitted and owned by the scheduler
> > +        let ptr = match self {
> > +            ArmedJob(job, _) => Box::<Job<T>>::into_raw(job),
> > +        };
> 
> If I get this all right then this all makes sure that drivers can't use
> the job after push and they don't forgot to call arm.
> 
> What I'm not seeing is how we force drivers to call push once they've
> called arm? I haven't check what the code does, but from the docs it
> sounds like if you don't call push then drop will get called. Which wreaks
> the book-keeping on an armed job. Or is there someting that prevents
> ArmedJob<T> from having the Drop trait and so the only way to not go boom
> is by pushing it?
> 
> Googling for "rust undroppable" seems to indicate that this isn't a thing
> rust can do?

Another thing that I just realized: The driver must ensure that the
arm->push sequence on a given drm_sched_entity isn't interrupte by another
thread doing the same, i.e. you need to wrap it all in a lock, and it
always needs to be the same lock for a given entity.

I have no idea how to guarantee that, but I guess somehow we should?
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
