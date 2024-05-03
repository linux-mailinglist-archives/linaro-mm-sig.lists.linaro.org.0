Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A328BB635
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:42:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1483544810
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 21:42:54 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by lists.linaro.org (Postfix) with ESMTPS id 59A1040C4C
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 21:42:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=SbG9ArJJ;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.218.42 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a59a5f81af4so17032566b.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 14:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1714772560; x=1715377360; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gwyBdWufoxKVrcKcsHh2OBVbUooApVD3S23GDedqB7U=;
        b=SbG9ArJJXXMRbBQMMWOHNYHKVYl92eQcltOFh4ll14aX1+sQWnRAnuhAPsPuZwBO5s
         KmEbfgsr4i0qXO1r3/GXUCIL38ZpXaZW8kgHu3Sl/xz2Wpw5Cgk6V0e8bIFmIAucAZLY
         FgjyImjhTXn45fXrCUWw+5xYSAGFYjnQpdJt4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714772560; x=1715377360;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gwyBdWufoxKVrcKcsHh2OBVbUooApVD3S23GDedqB7U=;
        b=uFW/JebLvI3EkASzFrIdjCaQyMyV9GDgZcclhnnG6oMtMahdMfRzgfeX/ih96xVm2X
         jbpisfvboEVvnAljoeViFIzW0r9WiHGXaf7YwEPnEbVkw3A48lpbkqsqVV30HwRZIPOI
         EbpWWKA30W49xW2wrXg5446Ga8U3Qd3xsS/t0f11FRBDviumI2mHUheKfZ55LdFSCj0Z
         hRK8/m43NuOJIHCvCeJ2GiFZd9U6n5Lg9MIqFg4u979T8dYu6qutjIh3xum4JKWtKKhZ
         fkgNpmLkICyneTqwx1lnPq3dk0sI+RAmgw8PI8Vhnd+DfrDNE1yqjPMWgw5GNqAsbP11
         42HA==
X-Forwarded-Encrypted: i=1; AJvYcCW2/dk5x+p0y8u0yOTBTSN6H+P6Jhzs0aaCw5gdMM4ggL6s4SoTSjywLzYYwsDozyEwF8XcAsC74a5+oavgsCt4BO2CPsyFimDIJP+/YcU=
X-Gm-Message-State: AOJu0YxpyhB0UasW8Dmxenj4M1US8rXmKT5sFw0GRVkJqgZR3FED5Cwh
	0C481z8wKT+k/dC3n2a+mIQtUeZPZZz8TCPC5HnmtKyNXNDT6o4sv60/uJCJpLZUYj03F6HXVjZ
	9WtXhYg==
X-Google-Smtp-Source: AGHT+IFmq/2LrBfP74axIRg+05VanEWwVtuckAasPW5J4oxnwGLKoS/N15YpXjsGJqYRgsH8dppolA==
X-Received: by 2002:a17:906:eb50:b0:a58:ec37:9d7f with SMTP id mc16-20020a170906eb5000b00a58ec379d7fmr2756221ejb.7.1714772560294;
        Fri, 03 May 2024 14:42:40 -0700 (PDT)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com. [209.85.218.54])
        by smtp.gmail.com with ESMTPSA id lc5-20020a170906f90500b00a599c783c04sm668580ejb.20.2024.05.03.14.42.39
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 May 2024 14:42:39 -0700 (PDT)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a58a36008ceso15307766b.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 14:42:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVXGvohr/zHrGOTfkCIUBVqyR8OUJ6CrYPbFybP8Me6+q7tQsaoqkp7vpbrecTAh5IpJuPHTaDjeIORV6pvrDmLYTWaGc1jE+CrxdobewM=
X-Received: by 2002:a17:906:29d4:b0:a59:8786:3852 with SMTP id
 y20-20020a17090629d400b00a5987863852mr2658677eje.55.1714772559064; Fri, 03
 May 2024 14:42:39 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000002d631f0615918f1e@google.com> <7c41cf3c-2a71-4dbb-8f34-0337890906fc@gmail.com>
 <202405031110.6F47982593@keescook> <64b51cc5-9f5b-4160-83f2-6d62175418a2@kernel.dk>
 <202405031207.9D62DA4973@keescook> <d6285f19-01aa-49c8-8fef-4b5842136215@kernel.dk>
 <202405031237.B6B8379@keescook> <202405031325.B8979870B@keescook>
 <20240503211109.GX2118490@ZenIV> <20240503213625.GA2118490@ZenIV>
In-Reply-To: <20240503213625.GA2118490@ZenIV>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 3 May 2024 14:42:22 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgRphONC5NBagypZpgriCUtztU7LCC9BzGZDEjWQbSVWQ@mail.gmail.com>
Message-ID: <CAHk-=wgRphONC5NBagypZpgriCUtztU7LCC9BzGZDEjWQbSVWQ@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 59A1040C4C
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.42:from];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,kernel.dk,gmail.com,kernel.org,syzkaller.appspotmail.com,vger.kernel.org,suse.cz,googlegroups.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org,labbott.name];
	DNSWL_BLOCKED(0.00)[209.85.218.42:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.218.54:received];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: MRXFW2C2GQGOMBIMUOSGUEWWYHZOLU5P
X-Message-ID-Hash: MRXFW2C2GQGOMBIMUOSGUEWWYHZOLU5P
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Kees Cook <keescook@chromium.org>, Jens Axboe <axboe@kernel.dk>, Bui Quang Minh <minhquangbui99@gmail.com>, Christian Brauner <brauner@kernel.org>, syzbot <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>, io-uring@vger.kernel.org, jack@suse.cz, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Laura Abbott <laura@labbott.name>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: get_file() unsafe under epoll (was Re: [syzbot] [fs?] [io-uring?] general protection fault in __ep_remove)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MRXFW2C2GQGOMBIMUOSGUEWWYHZOLU5P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 3 May 2024 at 14:36, Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> ... the last part is no-go - poll_wait() must be able to grab a reference
> (well, the callback in it must)

Yeah. I really think that *poll* itself is doing everything right. It
knows that it's called with a file pointer with a reference, and it
adds its own references as needed.

And I think that's all fine - both for dmabuf in particular, but for
poll in general. That's how things are *supposed* to work. You can
keep references to other things in your 'struct file *', knowing that
files are properly refcounted, and won't go away while you are dealing
with them.

The problem, of course, is that then epoll violates that "called with
reference" part.  epoll very much by design does *not* take references
to the files it keeps track of, and then tears them down at close()
time.

Now, epoll has its reasons for doing that. They are even good reasons.
But that does mean that when epoll needs to deal with that hackery.

I wish we could remove epoll entirely, but that isn't an option, so we
need to just make sure that when it accesses the ffd.file pointer, it
does so more carefully.

              Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
