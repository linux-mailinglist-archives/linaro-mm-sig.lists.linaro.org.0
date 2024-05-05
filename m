Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD958BC363
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 May 2024 22:03:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF3C144844
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 May 2024 20:03:37 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	by lists.linaro.org (Postfix) with ESMTPS id 7144340D75
	for <linaro-mm-sig@lists.linaro.org>; Sun,  5 May 2024 20:03:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=MniYLkaa;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.208.177 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2dfb4ea2bbfso14375281fa.2
        for <linaro-mm-sig@lists.linaro.org>; Sun, 05 May 2024 13:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1714939405; x=1715544205; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EHEpVJVmF2eGrGo8U8tgs6RR34ElBujEmi1VC80nQxg=;
        b=MniYLkaaFa/tbcNrrOpWfJ0u5h+3hLp30p6OdB9wttqA875GH5BSrq7wrarYa8ea0R
         WNvRdJomZbR0KBK6OPsv3dkNVnFvybHv8PAtb2x5McB7kwVTanIjj+49CyuKTLYCtNEx
         4AEzMcI9pe/+X9oE2OwI5FaeQMCrqquATXIhM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714939405; x=1715544205;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EHEpVJVmF2eGrGo8U8tgs6RR34ElBujEmi1VC80nQxg=;
        b=YGs1LjLTmCxF3UX3nrQIqhyWSnBg7NqJA5TQCh3WCTLGUbwLOzqxr/oDOysexaIZEs
         nfjfd5sl6FodQyxdl7VtJb404LXXzhRz3qz+UoT+bIocOQiAvcyZUkKYwI/1FeOaWbkx
         RUPGRmgTz43sq8shmaIVPSPfuwVgseyBhO9fAcihw16u662Oc2BZ2wNKsLmLf3tpJPrl
         wQUu+83TxXZKuy0tZ7GMwTHWceewuoTco6/acqTabkEaXvlqXXVLY3J/DcTWBAD4Y5zX
         mmIdQcqQLTOBvs7cLCDRnYzWi+eDS0oeGwHc/8KMFPvyZVAwPGM6FLG3ZfrPLnN2d0Hv
         /b0A==
X-Forwarded-Encrypted: i=1; AJvYcCUtjrhM8990XFoKNhKZmFPlR+EKuSOJfel4xpt6sEYZTv0thDuLJDPPUcPTV1nGeQF8U4JbJxJdTzCm3Euk9/mkMPq57f7eIrJe5er8vdg=
X-Gm-Message-State: AOJu0YwR+9z1/KNTVHGQYukOgBhCOfDEn80T5Dk5kGBMDr6nIqzFA6Ws
	8XZJmlKXShj3grZuJrIuhErW+4V7LKjLLR3OAOwqoi8rq7uK+j2o3QM8RG5QZ1PkpSLXP8/QJsU
	sQ6tzZw==
X-Google-Smtp-Source: AGHT+IHrWizL1WjX3Gb4abWUOtTwG3LqvM4rCZBQsus5ZzC1TIbsVxCnBa1vVIB+dTDyKcPm3/tgcQ==
X-Received: by 2002:a2e:a551:0:b0:2e1:7acb:6c40 with SMTP id e17-20020a2ea551000000b002e17acb6c40mr6131793ljn.29.1714939405108;
        Sun, 05 May 2024 13:03:25 -0700 (PDT)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com. [209.85.167.54])
        by smtp.gmail.com with ESMTPSA id o10-20020a2e90ca000000b002e1a148eb12sm1217786ljg.60.2024.05.05.13.03.24
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 May 2024 13:03:24 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52006fbae67so1619821e87.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 05 May 2024 13:03:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXFs1DjkANONyVF2RxZiFR261OFce+B3L6yCKuSDQOMN+k9urF3GLDVzAkNswjCRh/mxdIFbn76sCWGqU4p/QGqL+jv+3aArs+huWQKUG8=
X-Received: by 2002:a05:6512:202c:b0:518:c057:6ab1 with SMTP id
 s12-20020a056512202c00b00518c0576ab1mr4629192lfs.66.1714939404009; Sun, 05
 May 2024 13:03:24 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner> <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wirxPSQgRV1u7t4qS1t4ED7w7OeehdUSC-LYZXspqa49w@mail.gmail.com>
 <CAHk-=whrSSNYVzTHNFDNGag_xcKuv=RaQUX8+n29kkic39DRuQ@mail.gmail.com> <20240505194603.GH2118490@ZenIV>
In-Reply-To: <20240505194603.GH2118490@ZenIV>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 5 May 2024 13:03:07 -0700
X-Gmail-Original-Message-ID: <CAHk-=wipanX2KYbWvO5=5Zv9O3r8kA-tqBid0g3mLTCt_wt8OA@mail.gmail.com>
Message-ID: <CAHk-=wipanX2KYbWvO5=5Zv9O3r8kA-tqBid0g3mLTCt_wt8OA@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7144340D75
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[linux-foundation.org];
	FREEMAIL_CC(0.00)[kernel.org,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DNSWL_BLOCKED(0.00)[209.85.167.54:received,209.85.208.177:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	DWL_DNSWL_BLOCKED(0.00)[linux-foundation.org:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.177:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: YUOVCWBBHMO425ARXYB4G4H2ZPMLRQ7Y
X-Message-ID-Hash: YUOVCWBBHMO425ARXYB4G4H2ZPMLRQ7Y
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian Brauner <brauner@kernel.org>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YUOVCWBBHMO425ARXYB4G4H2ZPMLRQ7Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 5 May 2024 at 12:46, Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> I've no problem with having epoll grab a reference, but if we make that
> a universal requirement ->poll() instances can rely upon,

Al, we're note "making that a requirement".

It always has been.

Otgherwise, the docs should have shouted out DAMN LOUDLY that you
can't rely on all the normal refcounting of 'struct file' THAT EVERY
SINGLE NORMAL VFS FUNCTION CAN.

Lookie herte: epoll is unimportant and irrelevant garbage compared to
something fundamental like "read()", and what does read() do?

It does this:

        struct fd f = fdget_pos(fd);

        if (f.file) {
                ...

which is being DAMN CAREFUL to make sure that the file has the proper
refcounts before it then calls "vfs_read()". There's a lot of very
careful and subtle code in fdget_pos() to make this all proper, and
that even if the file is closed by another thread concurrently, we
*always* have a refcount to it, and it's always live over the whole
'vfs_read()' sequence.

'vfs_poll()' is NOT DIFFERENT in this regard. Not at all.

Now, you have two choices that are intellectually honest:

 - admit that epoll() - which is a hell of a lot less important -
should spend a small fraction of that effort on making its vfs_poll()
use sane

 - say that all this fdget_pos() care is uncalled for in the read()
path, and we should make all the filesystem .read() functions be aware
that the file pointer they get may be garbage, and they should use
get_file_active() to make sure every 'struct file *' use they have is
safe?

because if your choice is that "epoll can do whatever the f*&k it
wants", then it's in clear violation of all the effort we go to in a
MUCH MORE IMPORTANT code path, and is clearly not consistent or
logical.

Neither you nor Christian have explained why you think it's ok for
that epoll() garbage to magically violate all our regular rules.

Your claim that those regular rules are some new conditional
requirement that we'd be imposing. NO. They are the rules that
*anybody* who gets a 'struct file *' pointer should always be able to
rely on by default: it's damn well a ref-counted thing, and the caller
holds the refcount.

The exceptional case is exactly the other way around: if you do random
crap with unrefcounted poitners, it's *your* problem, and *you* are
the one who has to be careful. Not some unrelated poor driver that
didn't know about your f*&k-up.

Dammit, epoll is CLEARLY BUGGY. It's passing off random kernel
pointers without holding a refcount to them. THAT'S A BUG.

And fixing that bug is *not* somehow changing existing rules as you
are trying to claim. No. It's just fixing a bug.

So stop claiming that this is some "new requirement". It is absolutely
nothing of the sort. epoll() actively MISUSED file pointer, because
file pointers are fundamentally refcounted (as are pretty much all
sane kernel interfaces).

                Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
