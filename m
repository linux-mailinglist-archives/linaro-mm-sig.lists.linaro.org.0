Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 907628C0D74
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 May 2024 11:23:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1AA5447D4
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 May 2024 09:23:40 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by lists.linaro.org (Postfix) with ESMTPS id EA24B40E0D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 May 2024 09:23:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar-org.20230601.gappssmtp.com header.s=20230601 header.b=ueNqobaR;
	spf=none (lists.linaro.org: domain of daniel@fooishbar.org has no SPF policy when checking 209.85.219.54) smtp.mailfrom=daniel@fooishbar.org;
	dmarc=none
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6a1548d65e0so2240966d6.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 09 May 2024 02:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1715246609; x=1715851409; darn=lists.linaro.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nCxyHA4H0zlDgKUBRKhP1uHW5cceyxKQ1uLbmFwQQPk=;
        b=ueNqobaR6EYax2/eFDQMZM1FPwX3924BP6mOaqRrU1cF73CDQ/jFftexhsqupmdnBM
         AZyOpVG3gOMzk8408F3nh7YH7NyYL5gQuM3BNBjQBl82UTOQsFItIOEzyX3LpjSPiaHt
         FQSo9yFcxiG2U8a7wCdPfYkM4Wy3NR7OpiOEA0W7CzaC5uaN67uqyLdLCDYBbC7XYVDt
         DpZp/f9LVkRV2CPuctGWHG43wI52QNgJ9JwpRy5NbOwFZPghm0HeXCy1Hp7ZNEnQruZj
         XfKSxG2dfxb5iwrmyVygmqUMaY6PeRujamC4NjOCtxta8+r6RPR786oEbycietQh2fuB
         pFuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715246609; x=1715851409;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nCxyHA4H0zlDgKUBRKhP1uHW5cceyxKQ1uLbmFwQQPk=;
        b=qZl7td+SUuMyHKn+aAVE4clZTWmxukxaGL6J2tZCWL8zlu2PFlbHX/a76X/ztU15eR
         I8BnevXuDSOC4sttfXtI78jYVAAPp3xUreUkr2LPEfYVpVJ3aU74c7w2vBgCF6trW0RQ
         H1cLHNgw+4eICkYg2liBAHkIYzjNj4wVwin9K385Z3wxyakyxlZVxrovQOaUpEsPPrXF
         iQwvJWMwxEzdtOTf2VhWOa8F3oUI8xGIhhYoGEggTDG1GPM2+YZnAzQqyczdZX1vmRUC
         UQFqIM2Eafq4MLLRTNIJF+oF3nHG5/GV6sfLGnh40rScWrUMp5ntysFaZmOxiCEPSPE/
         Rl3w==
X-Forwarded-Encrypted: i=1; AJvYcCVHwXhVRxeZAOXz0l2P1xY11TokwzbxZ9gAFmXdCdO5EekNZObU3EfNaeFVds0nHYFWG+ZCGgP+UXDZM2WLEGZcMqWuEBDLfGgdtWtY6K4=
X-Gm-Message-State: AOJu0YxuJMEVMali9rUYRJWetNN9Y5J0EZqoAWW3P5a7rYhiXiyNaGua
	b43p5oMz2Qmf5pa8ews5YGTRiwplDhuIkc4k0bhQYmiEg6/1OcEQ85744dATwLzfhDc2o1KExg8
	APjy8ifMHLlAfCmq8ZZ3qs+dJuVOe9s5oLF5dMA==
X-Google-Smtp-Source: AGHT+IF6PhCgk1o7f4b1gc4aesQqVT1tyRMXdb/II5WaUUVRVGN+oa4txBNRnx7jzplgxY+HJ/x6UmsSdSVG8eSyBMk=
X-Received: by 2002:a05:6214:1cc2:b0:6a0:d32d:79d with SMTP id
 6a1803df08f44-6a1514dfd79mr58597296d6.56.1715246609461; Thu, 09 May 2024
 02:23:29 -0700 (PDT)
MIME-Version: 1.0
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <20240506-dazzling-nippy-rhino-eabccd@houat> <ZjjdUBYYKXJ1EPr5@phenom.ffwll.local>
 <cbe5a743-d8be-4b0e-99c4-e804fbadc099@redhat.com> <ZjoNTw-TkPnnWLTG@phenom.ffwll.local>
 <CAPj87rN3uSZoHpWLSQqz1SW9YMZNj9fkoA_EDEE_bzv-Tw8tSw@mail.gmail.com>
 <Zjs42PGvilLlF0Cg@phenom.ffwll.local> <CAPj87rN-wSbGSAoB8y3MXCS20_MAQvfpWSeUKYR6XzQ+Oh0FZA@mail.gmail.com>
 <Zjue98r4ZgGbMN5K@phenom.ffwll.local>
In-Reply-To: <Zjue98r4ZgGbMN5K@phenom.ffwll.local>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 9 May 2024 10:23:16 +0100
Message-ID: <CAPj87rPywSjKLrv00N-0SrkDndPdYGCBeveO0adh4xGCp20h9g@mail.gmail.com>
To: Daniel Stone <daniel@fooishbar.org>, Hans de Goede <hdegoede@redhat.com>,
	Maxime Ripard <mripard@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>,
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>,
	Sebastien Bacher <sebastien.bacher@canonical.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, Milan Zamazal <mzamazal@redhat.com>,
	Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EA24B40E0D
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[fooishbar-org.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[ffwll.ch:email,mail-qv1-f54.google.com:rdns,mail-qv1-f54.google.com:helo];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_TO(0.00)[fooishbar.org,redhat.com,linaro.org,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[fooishbar.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[fooishbar-org.20230601.gappssmtp.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.219.54:from];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.54:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: VGLWLXOWJLIEAXBWOD2PGC6LI36GUV5H
X-Message-ID-Hash: VGLWLXOWJLIEAXBWOD2PGC6LI36GUV5H
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VGLWLXOWJLIEAXBWOD2PGC6LI36GUV5H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On Wed, 8 May 2024 at 16:49, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Wed, May 08, 2024 at 09:38:33AM +0100, Daniel Stone wrote:
> > Right now, if your platform requires CMA for display, then the app
> > needs access to the GPU render node and the display node too, in order
> > to allocate buffers which the compositor can scan out directly. If it
> > only has access to the render nodes and not the display node, it won't
> > be able to allocate correctly, so its content will need a composition
> > pass, i.e. performance penalty for sandboxing. But if it can allocate
> > correctly, then hey, it can exhaust CMA just like heaps can.
> >
> > Personally I think we'd be better off just allowing access and
> > figuring out cgroups later. It's not like the OOM story is great
> > generally, and hey, you can get there with just render nodes ...
>
> Imo the right fix is to ask the compositor to allocate the buffers in this
> case, and then maybe have some kind of revoke/purge behaviour on these
> buffers. Compositor has an actual idea of who's a candidate for direct
> scanout after all, not the app. Or well at least force migrate the memory
> from cma to shmem.
>
> If you only whack cgroups on this issue you're still stuck in the world
> where either all apps together can ddos the display or no one can
> realistically direct scanout.

Mmm, back to DRI2. I can't say I'm wildly enthused about that, not
least because a client using GPU/codec/etc for those buffers would
have to communicate its requirements (alignment etc) forward to the
compositor in order for the compositor to allocate for it. Obviously
passing the constraints etc around isn't a solved problem yet, but it
is at least contained down in clients rather than making it back and
forth between client and compositor.

I'm extremely not-wild about the compositor migrating memory from CMA
to shmem behind the client's back, and tbh I'm not sure how that would
even work if the client has it pinned through whatever API it's
imported into.

Anyway, like Laurent says, if we're deciding that heaps can't be used
by generic apps (unlike DRM/V4L2/etc), then we need gralloc.

Cheers,
Daniel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
