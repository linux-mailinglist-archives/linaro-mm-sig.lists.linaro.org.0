Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D78C8BC3C4
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 May 2024 22:54:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A32F24478F
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 May 2024 20:54:18 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by lists.linaro.org (Postfix) with ESMTPS id 7645B40D75
	for <linaro-mm-sig@lists.linaro.org>; Sun,  5 May 2024 20:54:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=K8wXn2FP;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.208.172 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2e3737697d9so2045541fa.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 05 May 2024 13:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1714942447; x=1715547247; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JMg+wUi7Jg85TzG1l7LAOtzS/OMsOgVla4IG61dTMc8=;
        b=K8wXn2FPbkcPZFLcZJXMW4jXTB5zmhmBX3YJ7CsfcGMZDX6ZPcaRvNxfrqkvo8cA3C
         hD8TcsRyBcpwizItFbAFeVON2n6UQfEeNaDKKoFa1aQpdQZgAuh3RO3HpIdUk0lweABq
         FD32R5DB49ubvQwL/UnEpI0ZCXOTG/hU+dg5Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714942447; x=1715547247;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JMg+wUi7Jg85TzG1l7LAOtzS/OMsOgVla4IG61dTMc8=;
        b=R6qHNsxE+yqd1ZJP9e5JWHdanPvIU9umjWVLhpc6Cse0bTWA6v+IqbB2ImobbqUOrg
         zdxTIV2AxZNltHOJZR2noH8FiY9/p2yhlxxiiWHVfx/FJxeSwEiYovmpGFG1DwvGLYtS
         FLDjxVi3TNKyr85wqMC9MGSYqOCE3Avb3mmQ6cyOtR4CC8GKsBBnz5J6co8jm+RcOhsC
         dAYow2DwKTcUI1t+XxncXoAkrukD1XHPUD5xfbdWuZeQ6h1/BfX4n+CDwb91r3aUNNvT
         WqqB2vJN6pebkup3keoQqMKJbPhBBBqFC9w7PMU2JqVKVlffaUo6wMv6wtl42Th0wXOq
         JJww==
X-Forwarded-Encrypted: i=1; AJvYcCV6fx8xzmGAn6h00/r9tcDAlXCrwBZRGjGRupsuKqfMJWfAS2YI6TCx7KrusDGZERhnx3JZXO12IdNBpVl2a4A2nNHRTae95ZbZPjZ2Ll8=
X-Gm-Message-State: AOJu0Yz33ltmht0cJz0s9yUt6skslw7OHYfvmbY2lcF087zpvr93u5BI
	gGmu/OUuF7Q6De6yoVnGpiORwgwzpDm/ivgsEOb9HwtX9i3relgeN/L1xI1u82HzGP5za81LSKU
	EedrE2A==
X-Google-Smtp-Source: AGHT+IF41HGNqA6fKycWjimBfOMRTBRZyiLcqRSKwgIwyMHOckVqj9XJPfQPBXFkNB33Tw/QVVKppw==
X-Received: by 2002:a19:6a05:0:b0:51f:40f4:c6aa with SMTP id u5-20020a196a05000000b0051f40f4c6aamr5521796lfu.68.1714942447098;
        Sun, 05 May 2024 13:54:07 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com. [209.85.221.54])
        by smtp.gmail.com with ESMTPSA id x15-20020a05640226cf00b00572a0550acbsm4327355edd.55.2024.05.05.13.54.05
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 May 2024 13:54:06 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-34f0e55787aso407012f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Sun, 05 May 2024 13:54:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV+lG5MnmZhohb0EDtIFn4lMvfLDGOFhf6wiEwiI8neXBTAwB17YL93VHHzVv2HrW2tKVNnqXPVHv30W+i5roAVNpc3WSuTjoyHVK+Z4UU=
X-Received: by 2002:a05:600c:314f:b0:416:88f9:f5ea with SMTP id
 h15-20020a05600c314f00b0041688f9f5eamr6455233wmo.34.1714942445499; Sun, 05
 May 2024 13:54:05 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner> <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wirxPSQgRV1u7t4qS1t4ED7w7OeehdUSC-LYZXspqa49w@mail.gmail.com>
 <CAHk-=whrSSNYVzTHNFDNGag_xcKuv=RaQUX8+n29kkic39DRuQ@mail.gmail.com>
 <20240505194603.GH2118490@ZenIV> <CAHk-=wipanX2KYbWvO5=5Zv9O3r8kA-tqBid0g3mLTCt_wt8OA@mail.gmail.com>
 <20240505203052.GJ2118490@ZenIV>
In-Reply-To: <20240505203052.GJ2118490@ZenIV>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 5 May 2024 13:53:48 -0700
X-Gmail-Original-Message-ID: <CAHk-=whFg8-WyMbVUGW5c0baurGzqmRtzFLoU-gxtRXq2nVZ+w@mail.gmail.com>
Message-ID: <CAHk-=whFg8-WyMbVUGW5c0baurGzqmRtzFLoU-gxtRXq2nVZ+w@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7645B40D75
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	MISSING_XM_UA(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.221.54:received];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.172:from];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.208.172:from]
X-Rspamd-Action: no action
Message-ID-Hash: IOJWDZAJ7MSI3F2O5GBT3TFJJQPW3ANU
X-Message-ID-Hash: IOJWDZAJ7MSI3F2O5GBT3TFJJQPW3ANU
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian Brauner <brauner@kernel.org>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IOJWDZAJ7MSI3F2O5GBT3TFJJQPW3ANU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 5 May 2024 at 13:30, Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> 0.      special-cased ->f_count rule for ->poll() is a wart and it's
> better to get rid of it.
>
> 1.      fs/eventpoll.c is a steaming pile of shit and I'd be glad to see
> git rm taken to it.  Short of that, by all means, let's grab reference
> in there around the call of vfs_poll() (see (0)).

Agreed on 0/1.

> 2.      having ->poll() instances grab extra references to file passed
> to them is not something that should be encouraged; there's a plenty
> of potential problems, and "caller has it pinned, so we are fine with
> grabbing extra refs" is nowhere near enough to eliminate those.

So it's not clear why you hate it so much, since those extra
references are totally normal in all the other VFS paths.

I mean, they are perhaps not the *common* case, but we have a lot of
random get_file() calls sprinkled around in various places when you
end up passing a file descriptor off to some asynchronous operation
thing.

Yeah, I think most of them tend to be special operations (eg the tty
TIOCCONS ioctl to redirect the console), but it's not like vfs_ioctl()
is *that* different from vfs_poll. Different operation, not somehow
"one is more special than the other".

cachefiles and backing-file does it for regular IO, and drop it at IO
completion - not that different from what dma-buf does. It's in
->read_iter() rather than ->poll(), but again: different operations,
but not "one of them is somehow fundamentally different".

> 3.      dma-buf uses of get_file() are probably safe (epoll shite aside),
> but they do look fishy.  That has nothing to do with epoll.

Now, what dma-buf basically seems to do is to avoid ref-counting its
own fundamental data structure, and replaces that by refcounting the
'struct file' that *points* to it instead.

And it is a bit odd, but it actually makes some amount of sense,
because then what it passes around is that file pointer (and it allows
passing it around from user space *as* that file).

And honestly, if you look at why it then needs to add its refcount to
it all, it actually makes sense.  dma-bufs have this notion of
"fences" that are basically completion points for the asynchronous
DMA. Doing a "poll()" operation will add a note to the fence to get
that wakeup when it's done.

And yes, logically it takes a ref to the "struct dma_buf", but because
of how the lifetime of the dma_buf is associated with the lifetime of
the 'struct file', that then turns into taking a ref on the file.

Unusual? Yes. But not illogical. Not obviously broken. Tying the
lifetime of the dma_buf to the lifetime of a file that is passed along
makes _sense_ for that use.

I'm sure dma-bufs could add another level of refcounting on the
'struct dma_buf' itself, and not make it be 1:1 with the file, but
it's not clear to me what the advantage would really be, or why it
would be wrong to re-use a refcount that is already there.

                 Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
