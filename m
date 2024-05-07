Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5653C8BE98D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 18:47:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A10A43FAC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 16:47:00 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id 9720143FAC
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 16:46:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=UPFLd9fX;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.218.53 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a59a0168c75so874822966b.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 09:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1715100408; x=1715705208; darn=lists.linaro.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x+/m+VOoT4mV8mZDo3MLSD/vsCL7+IgmGDq9kgXSLzI=;
        b=UPFLd9fXUA/NRrl0ulch5ffJbSZ3DYG8Ywdc+xCaTMI8TFyux77NZIzs514ap5MIOs
         cMv0C5eIa73dR9S0sFPs0OJAsyf2MHZ6WQv9p6DtZ5PXJm4ZXpVr1RO5iQwWzTJnbYfM
         OOnZAIsBeeWWw2Em7JUiD0J3veOLZuVLfvGw8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715100408; x=1715705208;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x+/m+VOoT4mV8mZDo3MLSD/vsCL7+IgmGDq9kgXSLzI=;
        b=ai4pEPlt5QHrNHedZ8/5OLtChOz3bo7VznT+C8f66e8u4z08MHWnFtGJUaH11vKRfF
         W2srzU0VAEly5DxBXdNDZeFg6N3ArkBoQmV1IjglbJ/7dzLo5qzyXgjKCF1YmuBkMrJJ
         C8C5163D3wBsG6ZlkCsTGt093Xz3dxjQ86xi4zjIOptornQaogPGA+c5+DjTJ6V1ecgZ
         Igd/UJUa/soNYp+7yAyQOV/1Nffn/wKUL8mt1OnEi7KJTzQa0XCzc+tMYlNBPHtduz8C
         wHrOLlChYSD7cqCFmTyq6W5Cu9KiTCD/9OQ8+FVVEs0UMOgG2Ve14p5zn9UozITyln6n
         LgcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcWeXieISX/nztO8rejdCAK9+wlH3c2XiK5P9iQwSnnNDw54kCzdlYCXNpgV6dQTDHHNyds4JObFUkJ2SrN4o8JylD70U9ASRnGX6fOzI=
X-Gm-Message-State: AOJu0YybhdSWq93ijcnf6Q5E9aMWmtu5vCKVXnpit75i0lHvJqT1pcNv
	5MWzgsKu3ZTkzOek4IRot6G9zagZs/aIiF0tgK8LmCQN872+jykllA/k0Wu6Q7oP/DNMhqwN+ZD
	HX8YMUg==
X-Google-Smtp-Source: AGHT+IEdNcHaKEFJQxeXE97wYthKck/qQye4/rrWWcWbgLvybwEuCPhq9Nnvs4hiYWgLAMbTLQ6/6A==
X-Received: by 2002:a17:906:2c09:b0:a59:bfab:b257 with SMTP id a640c23a62f3a-a59fb9f2e08mr493066b.65.1715100408601;
        Tue, 07 May 2024 09:46:48 -0700 (PDT)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com. [209.85.218.41])
        by smtp.gmail.com with ESMTPSA id n23-20020a17090625d700b00a473a1fe089sm6528212ejb.1.2024.05.07.09.46.48
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 09:46:48 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a59e4136010so391728666b.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 09:46:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWPRvvc13zajQKVDz85VM3Is5UKRCrlotVATkNxp4GYFxyR9KKIEp0bSPpZJLTpSDemKoQZ88WAA0bmo/zxz/NWv6zdEh5k/nThiFTenL4=
X-Received: by 2002:a17:906:d148:b0:a59:b099:1544 with SMTP id
 a640c23a62f3a-a59fb96bda9mr1610066b.42.1715100407952; Tue, 07 May 2024
 09:46:47 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner> <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
 <b1728d20-047c-4e28-8458-bf3206a1c97c@gmail.com> <ZjoKX4nmrRdevyxm@phenom.ffwll.local>
In-Reply-To: <ZjoKX4nmrRdevyxm@phenom.ffwll.local>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 7 May 2024 09:46:31 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgh5S-7sCCqXBxGcXHZDhe4U8cuaXpVTjtXLej2si2f3g@mail.gmail.com>
Message-ID: <CAHk-=wgh5S-7sCCqXBxGcXHZDhe4U8cuaXpVTjtXLej2si2f3g@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>, Christian Brauner <brauner@kernel.org>,
	Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk,
	christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
	io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name,
	linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	minhquangbui99@gmail.com, sumit.semwal@linaro.org,
	syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com,
	syzkaller-bugs@googlegroups.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9720143FAC
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.79 / 15.00];
	BAYES_HAM(-2.99)[99.94%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.53:from];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[linux-foundation.org];
	URIBL_BLOCKED(0.00)[linux-foundation.org:dkim,ffwll.ch:email,mail-ej1-f53.google.com:rdns,mail-ej1-f53.google.com:helo];
	FREEMAIL_TO(0.00)[gmail.com,linux-foundation.org,kernel.org,zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: E2SON6NXV2A2FGANY57H2T5GLTISEJUR
X-Message-ID-Hash: E2SON6NXV2A2FGANY57H2T5GLTISEJUR
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E2SON6NXV2A2FGANY57H2T5GLTISEJUR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 7 May 2024 at 04:03, Daniel Vetter <daniel@ffwll.ch> wrote:
>
> It's really annoying that on some distros/builds we don't have that, and
> for gpu driver stack reasons we _really_ need to know whether a fd is the
> same as another, due to some messy uniqueness requirements on buffer
> objects various drivers have.

It's sad that such a simple thing would require two other horrid
models (EPOLL or KCMP).

There'[s a reason that KCMP is a config option - *some* of that is
horrible code - but the "compare file descriptors for equality" is not
that reason.

Note that KCMP really is a broken mess. It's also a potential security
hole, even for the simple things, because of how it ends up comparing
kernel pointers (ie it doesn't just say "same file descriptor", it
gives an ordering of them, so you can use KCMP to sort things in
kernel space).

And yes, it orders them after obfuscating the pointer, but it's still
not something I would consider sane as a baseline interface. It was
designed for checkpoint-restore, it's the wrong thing to use for some
"are these file descriptors the same".

The same argument goes for using EPOLL for that. Disgusting hack.

Just what are the requirements for the GPU stack? Is one of the file
descriptors "trusted", IOW, you know what kind it is?

Because dammit, it's *so* easy to do. You could just add a core DRM
ioctl for it. Literally just

        struct fd f1 = fdget(fd1);
        struct fd f2 = fdget(fd2);
        int same;

        same = f1.file && f1.file == f2.file;
        fdput(fd1);
        fdput(fd2);
        return same;

where the only question is if you also woudl want to deal with O_PATH
fd's, in which case the "fdget()" would be "fdget_raw()".

Honestly, adding some DRM ioctl for this sounds hacky, but it sounds
less hacky than relying on EPOLL or KCMP.

I'd be perfectly ok with adding a generic "FISAME" VFS level ioctl
too, if this is possibly a more common thing. and not just DRM wants
it.

Would something like that work for you?

                 Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
