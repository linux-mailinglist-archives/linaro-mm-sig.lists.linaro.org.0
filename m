Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 918368BB813
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 01:16:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A14894478E
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:16:45 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id 9C9E5401C4
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 23:16:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=QAoFRjZ2;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.218.45 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a598e483ad1so26425766b.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 16:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1714778193; x=1715382993; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cGG/rn4AzL6EAyTxraRF01dNEmbt6QApJhVwyWVeemo=;
        b=QAoFRjZ2y8w16k34tuoKASMvNiyckjDIQM5SxQ6cQhb4bHq9OIGcO/mZPEXE93ABWF
         2CQRZ0tcoIYBBd+m5qbmibrV4xOZH0onKvPk+401JGxUgxYL5tSFb1w3Zpy3/xga7EUj
         pgraatoxoiGya2S1UuYWA5ySsdV64P0LY1kYU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714778193; x=1715382993;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cGG/rn4AzL6EAyTxraRF01dNEmbt6QApJhVwyWVeemo=;
        b=kVBUWfqeMX4VBaliZ/2Y+dG9IGacDURE+w7SBwAI+Koe/plspmBvfG1PQpW1y+Kk91
         Ai7ru1EFPK0rAb2ThmRn27iOM/4fHTVhbk2J7FaajxHowjxLVyIBYgoR5K3RudeJTzeG
         M/6JNNfWDzCRCxNCpTR7wkIYbb38WkjEoRa+menobNvM8YeRy0Z016jP89jJpo5eTPz4
         DmpU+M97YZnFkBuUe9nICf1URmFa7P66SE0eI4zeqsDPMImRdgzqVbnMMG6PJ553rvcK
         pED3d/3gSlkFEbANZl8ZTmeIjqlFWZGbpKmEy7CZlL+yZZ5ZrfnLW5Lc7QSRY+oaGkvz
         pJQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLkfkj13Qylm5jSPTM8UuIFeunYW589aJOZlq/BVCBk0WO+SPoPVlL9CGoiQ7bAthiIhjtfUT221nWLyPCy0IFm1Z2m0SiRCy4tHum/aU=
X-Gm-Message-State: AOJu0YwQLaqE3+QAnVsUC/M7i0V6TRnDzlNKK8Acw7LcXuLg4bAdh7Gw
	3fFttbvtpjEMjZu8rT8RJlloNMRODDBYbDpJPhXtuC7n9viSc9KvXXm6d6Sq4jkUuvRroBUVRCE
	HiZB27Q==
X-Google-Smtp-Source: AGHT+IGkn5mNQKmUiYbR8Koid8OqkGQFGhA7AbJu7NIJ6FOuDzeg/NLQ1Ks5XrLeQ/nrSUoO7V4wrg==
X-Received: by 2002:a17:906:2492:b0:a59:9f4e:4e3d with SMTP id e18-20020a170906249200b00a599f4e4e3dmr902739ejb.3.1714778193577;
        Fri, 03 May 2024 16:16:33 -0700 (PDT)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com. [209.85.218.46])
        by smtp.gmail.com with ESMTPSA id z21-20020a170906715500b00a599c8b6531sm756891ejj.178.2024.05.03.16.16.32
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 May 2024 16:16:32 -0700 (PDT)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a599fcba36eso27797366b.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 16:16:32 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVP58eyc51CHhZmyEEY8xvDQb3VsU6pposgteZ9/r5a6RjCKzEFCftQvNKLppSiCDdk0KRadAi8HAsbZmLOUSRGvPKca4ZDkudBP1oIax0=
X-Received: by 2002:a17:906:52c1:b0:a59:2e45:f528 with SMTP id
 w1-20020a17090652c100b00a592e45f528mr2851931ejn.38.1714778191864; Fri, 03 May
 2024 16:16:31 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240503214531.GB2118490@ZenIV> <CAHk-=wgC+QpveKCJpeqsaORu7htoNNKA8mp+d9mvJEXmSKjhbw@mail.gmail.com>
 <20240503220145.GD2118490@ZenIV> <20240503220744.GE2118490@ZenIV>
In-Reply-To: <20240503220744.GE2118490@ZenIV>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 3 May 2024 16:16:15 -0700
X-Gmail-Original-Message-ID: <CAHk-=whULchE1i5LA2Fa=ZndSAzPXGWh_e5+a=YV3qT1BEST7w@mail.gmail.com>
Message-ID: <CAHk-=whULchE1i5LA2Fa=ZndSAzPXGWh_e5+a=YV3qT1BEST7w@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9C9E5401C4
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.45:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	DNSWL_BLOCKED(0.00)[209.85.218.46:received,209.85.218.45:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 2EION4KFBCTE2RWJJDRZI3YNIEIVYYH5
X-Message-ID-Hash: 2EION4KFBCTE2RWJJDRZI3YNIEIVYYH5
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: keescook@chromium.org, axboe@kernel.dk, brauner@kernel.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2EION4KFBCTE2RWJJDRZI3YNIEIVYYH5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 3 May 2024 at 15:07, Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> Suppose your program calls select() on a pipe and dmabuf, sees data to be read
> from pipe, reads it, closes both pipe and dmabuf and exits.
>
> Would you expect that dmabuf file would stick around for hell knows how long
> after that?  I would certainly be very surprised by running into that...

Why?

That's the _point_ of refcounts. They make the thing they refcount
stay around until it's no longer referenced.

Now, I agree that dmabuf's are a bit odd in how they use a 'struct
file' *as* their refcount, but hey, it's a specialty use. Unusual
perhaps, but not exactly wrong.

I suspect that if you saw a dmabuf just have its own 'refcount_t' and
stay around until it was done, you wouldn't bat an eye at it, and it's
really just the "it uses a struct file for counting" that you are
reacting to.

                Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
