Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D618BEC43
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 21:07:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DB5944359
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 19:07:40 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id 373193F02C
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 19:07:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=bJS23eaK;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.218.47 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a599af16934so887773766b.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 12:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1715108849; x=1715713649; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JwU1IWNzhlSP5EH9iyMHaFmRpSbbE8IFJCVgZMlAkcM=;
        b=bJS23eaKKyKeeveTH8147mqo9cGbgCiQdjICCIHznl6posGZh43Az1hMUsGAMLMl/p
         ixjU2SDbZgMVsGaRRkX1a0NU/eD+FuzI2mIW57otGITPtKHkxscRuj6sHlRH8kGJ5z7V
         akMzVo7QOXkCuTkb6na4QnoyEuJE8/Mfx2Phg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715108849; x=1715713649;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JwU1IWNzhlSP5EH9iyMHaFmRpSbbE8IFJCVgZMlAkcM=;
        b=tdG3YNLg9ug4nq1pcuVfu0MtfFbLNzZhwXBKmSwR/yyLle5C5XpTBTXUU16rQGIUtx
         66wK4FGobmbaGnlMLwiit1EjG/OUwtyzyVfSzhpphd/dmjObowAhuiO7Wl8cliTSACgG
         riLU7s9bZLzEuHiT5VGylhZn69k/UVD5xg0RPzpUpRUIge/gU3RqbRq6/hyW4BL+WZLa
         5bUV40+6o0CmiI3kNbpIIqc4KiTslrRPdiEaYYAGKQtPR67yHHOxwdgMjfnVZ5O4DDU0
         rQRGrzapBvn8VlDP7OnEg83HlMMx/wF3eySCw0R6uP+Wrl8+vAXDSa7eZSFG+zjxohEq
         202g==
X-Forwarded-Encrypted: i=1; AJvYcCVoiEfyVDWIFLNE6Lsiy5iRpM0edMpVykm5yyRaBixm2RJ99toU/MIi5B2gqYrBOwocsE4lWzhzcu5Y5rxsenI3q/5l68r/Jb/e7qN3GrU=
X-Gm-Message-State: AOJu0YwN4iA8Z+oqmSRCc+LD2lfGub3fK/4OQrWaw680Jfg5D+M/44i3
	RKm+PaOgkISGxCbxhfJGFVYE/nD0e0lwVdWPvYJjkHPeCl1SRpVHMGhyfysnaDJq2qJmLyiGl8r
	uyr6/CA==
X-Google-Smtp-Source: AGHT+IHKtZRYY/mU6Qq1lG0iwlc3eLcqAQbNTreHO4BIni1Q8kRZeK8+vlJWBVPmiW3PqAYK+8wcpQ==
X-Received: by 2002:a17:906:f8c4:b0:a59:bf43:4e40 with SMTP id a640c23a62f3a-a59fb94a651mr22010066b.14.1715108848832;
        Tue, 07 May 2024 12:07:28 -0700 (PDT)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com. [209.85.218.44])
        by smtp.gmail.com with ESMTPSA id oy17-20020a170907105100b00a599a5dec53sm5347655ejb.125.2024.05.07.12.07.27
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 12:07:27 -0700 (PDT)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a59b178b75bso630040966b.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 12:07:27 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXGexIe5sYXuVTgBIpyJK72XvNFY2yW6pXfbOBmrrg2zPbH8PhVn3dpD7kdqEJV5Yr4qwHTSPMWz8yT2HX55JynJkfH0HcvYyb3Xg+BW3s=
X-Received: by 2002:a17:906:1957:b0:a59:a977:a157 with SMTP id
 a640c23a62f3a-a59fb9f209dmr23097766b.73.1715108847432; Tue, 07 May 2024
 12:07:27 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner> <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
 <b1728d20-047c-4e28-8458-bf3206a1c97c@gmail.com> <ZjoKX4nmrRdevyxm@phenom.ffwll.local>
 <CAHk-=wgh5S-7sCCqXBxGcXHZDhe4U8cuaXpVTjtXLej2si2f3g@mail.gmail.com> <CAKMK7uGzhAHHkWj0N33NB3OXMFtNHv7=h=P-bdtYkw=Ja9kwHw@mail.gmail.com>
In-Reply-To: <CAKMK7uGzhAHHkWj0N33NB3OXMFtNHv7=h=P-bdtYkw=Ja9kwHw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 7 May 2024 12:07:10 -0700
X-Gmail-Original-Message-ID: <CAHk-=whFyOn4vp7+++MTOd1Y3wgVFxRoVdSuPmN1_b6q_Jjkxg@mail.gmail.com>
Message-ID: <CAHk-=whFyOn4vp7+++MTOd1Y3wgVFxRoVdSuPmN1_b6q_Jjkxg@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 373193F02C
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[mail-ej1-f47.google.com:rdns,mail-ej1-f47.google.com:helo,gitlab.freedesktop.org:url,linux-foundation.org:dkim,ffwll.ch:email];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[emersion.fr,collabora.com,gmail.com,kernel.org,zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.47:from];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: UIPX5Y4QR366XUYOWM2RXKI42SQIRCBC
X-Message-ID-Hash: UIPX5Y4QR366XUYOWM2RXKI42SQIRCBC
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simon Ser <contact@emersion.fr>, Pekka Paalanen <pekka.paalanen@collabora.com>, Christian Brauner <brauner@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UIPX5Y4QR366XUYOWM2RXKI42SQIRCBC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 7 May 2024 at 11:04, Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Tue, May 07, 2024 at 09:46:31AM -0700, Linus Torvalds wrote:
>
> > I'd be perfectly ok with adding a generic "FISAME" VFS level ioctl
> > too, if this is possibly a more common thing. and not just DRM wants
> > it.
> >
> > Would something like that work for you?
>
> Yes.
>
> Adding Simon and Pekka as two of the usual suspects for this kind of
> stuff. Also example code (the int return value is just so that callers know
> when kcmp isn't available, they all only care about equality):
>
> https://gitlab.freedesktop.org/mesa/mesa/-/blob/main/src/util/os_file.c#L239

That example thing shows that we shouldn't make it a FISAME ioctl - we
should make it a fcntl() instead, and it would just be a companion to
F_DUPFD.

Doesn't that strike everybody as a *much* cleaner interface? I think
F_ISDUP would work very naturally indeed with F_DUPFD.

Yes? No?

                       Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
